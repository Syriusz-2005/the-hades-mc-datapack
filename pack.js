import fs from 'fs/promises';
import FS from 'fs';
import JsZip from 'jszip';

const zip = new JsZip();

const name = process.argv[2] ?? "deep-dark-expansion-v1.zip";

(async () => {
  try {
    const mcMeta = await fs.readFile('./pack.mcmeta');
    try {
      const image = await fs.readFile('./pack.png');
      zip.file('pack.png', image);
    } catch (e) {}
    
    zip.file('pack.mcmeta', mcMeta);

    /**
     * @param {string[]} paths
     */
    async function read( paths ) {
      for (const path of paths) {
        if (path.includes('.')) {
          const data = await fs.readFile(path);
          zip.file( path, data );
          continue;
        }

        console.log(path);
        const c = await fs.readdir(path);
        const dirPath = path;
        zip.folder(dirPath);
        await read([ ...c.map( c => path + '/' + c ) ]);
      }
    }

    await read([ 'data' ]);

    zip.generateNodeStream({ type: 'nodebuffer', streamFiles: true })
      .pipe(FS.createWriteStream(name))
      .on('finish', function () {
          console.log("zip file written");
      });
    
  } catch(err) {
    console.warn(err);
  }
})();