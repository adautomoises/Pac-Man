'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "351c70e50457d51408c357ba04b98936",
"assets/assets/images/big_pacman_strip3.png": "0c6e0b2fcbb441d70e52754d073ccb6c",
"assets/assets/images/blue_ghost_down_strip2.png": "dc64548d102a8936285f0ae7acb39038",
"assets/assets/images/blue_ghost_left_strip2.png": "02375ffaea2a3b11b2eb25c6f428a386",
"assets/assets/images/blue_ghost_right_strip2.png": "b1f56fc96f933bed70bfd7b61a0ad894",
"assets/assets/images/blue_ghost_up_strip2.png": "00555d7a5ebbaf0a92962045588061a3",
"assets/assets/images/food_1.png": "125e707c6d8200c32592ccef91ea419c",
"assets/assets/images/food_2.png": "c3ed8ae693c229a193361d379a422828",
"assets/assets/images/food_3.png": "270d5fdb2480a83c723bcdc5497a0b59",
"assets/assets/images/food_4.png": "086bf02da87382724b277e76cecb4e19",
"assets/assets/images/gameover.png": "59aa07d0f29f6c92f734dfabb2fb5711",
"assets/assets/images/ghost_dead_down.png": "a18211057479f874cf35864f9dd06fc1",
"assets/assets/images/ghost_dead_left.png": "4a227cab57a134b7b8e2b949233f0428",
"assets/assets/images/ghost_dead_right.png": "be0942682ccf4a82aedaa804b35242e5",
"assets/assets/images/ghost_dead_up.png": "6ccd59aac03590ddb1ccbf42b6833d56",
"assets/assets/images/ghost_vulnerable_strip2.png": "27320cc0610bada7316f62d3f86faf3f",
"assets/assets/images/ghost_vulnerable_time_strip2.png": "8e795e879173e998323e60c25a0a5e9b",
"assets/assets/images/map/map.json": "0a6e11553a7a3cd8098a8435eb35625b",
"assets/assets/images/map/mapa1.png": "399792538cc551133939664d5c2bec83",
"assets/assets/images/map/mapa1.tsj": "339ee726009c38a46636dcfda86d2506",
"assets/assets/images/map/mapa2.png": "2a3db2e6f80c194d6e25f4189f5c4c16",
"assets/assets/images/map/mapa2.tsj": "834dc53979dddc3e702b59762f22c6c4",
"assets/assets/images/orange_ghost_down_strip2.png": "76ab214b02d629832f8e7e6cf6c88943",
"assets/assets/images/orange_ghost_left_strip2.png": "3bb24751a08bfaabec25e1240e6818cb",
"assets/assets/images/orange_ghost_right_strip2.png": "0064d7fe83a54ea39f14f3486191b221",
"assets/assets/images/orange_ghost_up_strip2.png": "5958d33aee8142804e1575b0b32a5061",
"assets/assets/images/pacman_down_strip3.png": "bc88ea94e986ea8b31b73c26eb3946ee",
"assets/assets/images/pacman_dying_strip11.png": "1e2689e52633186e017b5bdb2477d4ae",
"assets/assets/images/pacman_left_strip3.png": "9f44ea0e07fa84c5ff4e398d00c3f069",
"assets/assets/images/pacman_right_strip3.png": "119a6be2c04b87c0c86ca9a605811f49",
"assets/assets/images/pacman_up_strip3.png": "93a0edf01ffda9aac43c0d1f6ace4d5a",
"assets/assets/images/pink_ghost_down_strip2.png": "7c2c0c9a8c6a99006794be969211dea5",
"assets/assets/images/pink_ghost_left_strip2.png": "a5e757a90b166755c5985c021d6980e6",
"assets/assets/images/pink_ghost_right_strip2.png": "d5f5e266642683ae1bc0bdb5195b4528",
"assets/assets/images/pink_ghost_up_strip2.png": "2a3e7ec2efbd6ff04d44a8ec2065b91f",
"assets/assets/images/player_one.png": "afc7def7221ea0e0482a69fe25f49492",
"assets/assets/images/player_two.png": "3a13f6c0e2d42c1b2d4dbb3627ff2eb0",
"assets/assets/images/point_counter_0.png": "57685c9f7317830adf47231033bad31e",
"assets/assets/images/point_counter_1.png": "6f1e074e8ace39810d3eeaed9bff5be4",
"assets/assets/images/point_counter_10.png": "3aacedbc35aea2037a65ad7a236e7c22",
"assets/assets/images/point_counter_2.png": "451543a83215373dfd9bb51506a48d56",
"assets/assets/images/point_counter_3.png": "ecae19cd59c941349f213b03d9194ba9",
"assets/assets/images/point_counter_4.png": "632cb15f403f7155c8330fea7a105d62",
"assets/assets/images/point_counter_5.png": "25df3a6c381aa4c53d1d21ed865856f0",
"assets/assets/images/point_counter_6.png": "429bf37fcb45d49fef5d4ff0a56ae610",
"assets/assets/images/point_counter_7.png": "ceb0804e8b3d446ad5d727a6b79f2fd7",
"assets/assets/images/point_counter_8.png": "8d8b203d7469e68a52274aac67e1e4c8",
"assets/assets/images/point_counter_9.png": "3aacedbc35aea2037a65ad7a236e7c22",
"assets/assets/images/point_food_1.png": "65391aee800a9213ae94671b34ef3a55",
"assets/assets/images/point_food_2.png": "df4ce50f956048f07898def2bc7e74d8",
"assets/assets/images/point_food_3.png": "fd7c58cfffec649e22332d20f3b8d8a6",
"assets/assets/images/point_food_4.png": "5ff2cd57a5e57e24a4e3e8dcc241a689",
"assets/assets/images/point_food_5.png": "762b9dacbdfe431652a365165a496e86",
"assets/assets/images/point_food_6.png": "28bfb0fe3bc8b90441ef394a18c5caa6",
"assets/assets/images/point_food_7.png": "a083c76437637ccea4dc63346822a7ef",
"assets/assets/images/point_food_8.png": "37673306eb91fb5df7f54a0ef06ac5a1",
"assets/assets/images/point_kill_ghost_1.png": "847350c0def9dc4370bc4fb1ad871df0",
"assets/assets/images/point_kill_ghost_2.png": "04317b344bab7a019a3fd7a17f8d3d3f",
"assets/assets/images/point_kill_ghost_3.png": "d5bccdc647f6f7619f2b5cab7bdbb4a5",
"assets/assets/images/point_kill_ghost_4.png": "41f17f894ea2ca66305b1fb1cdd2c64a",
"assets/assets/images/power.png": "049c29c19f5b2dd0a6b5895cf00cb585",
"assets/assets/images/ready!.png": "21d45c26338536cc2ec83f441dc2d1dc",
"assets/assets/images/red_ghost_down_strip2.png": "d499d222f764e0f919c9fb5e2486abfb",
"assets/assets/images/red_ghost_left_strip2.png": "963c564ec499e4025c783cb2648f4eff",
"assets/assets/images/red_ghost_right_strip2.png": "45a7857fe87d23ca0b7a70436ebfc8f5",
"assets/assets/images/red_ghost_up_strip2.png": "92dad41f306eb85c17471da954b13147",
"assets/assets/images/sound_1.png": "fe61dab7e3958325f35d33e4853aa16e",
"assets/assets/images/sound_2.png": "55aba2fda08368e1ff5dc4c716a858ed",
"assets/assets/images/unknown_objects_1.png": "6e84fbd882016f2b74dd4ee9cb5264e2",
"assets/assets/images/unknown_objects_2.png": "df0e5240040d2e61b90404c6f3bae00f",
"assets/assets/images/unknown_objects_3.png": "efb0a88a295c308800d41263c9644578",
"assets/assets/images/unknown_objects_4.png": "68a74f52fa49ff48043bb2900ac7eacb",
"assets/assets/images/unknown_sprites_1.png": "a63b634b8b1f3d6f5efb9f7f68b6ef5b",
"assets/assets/images/unknown_sprites_10.png": "2e227cc3179b62287268dc3a00e11c42",
"assets/assets/images/unknown_sprites_11.png": "4bbbf63ebb7e04e938dfb3b1e090890e",
"assets/assets/images/unknown_sprites_2.png": "097a2562ea451fd730ef92f3404340bd",
"assets/assets/images/unknown_sprites_3.png": "94713050e3c978c5c2c6b3a8f76ce659",
"assets/assets/images/unknown_sprites_4.png": "55723b03d17502a9170f3ed7a7802f42",
"assets/assets/images/unknown_sprites_5.png": "87a10d77a469866e127da8f69b0da062",
"assets/assets/images/unknown_sprites_6.png": "0d46aa98f3958e9a4cf860589790266d",
"assets/assets/images/unknown_sprites_7.png": "29e9a4c1b16548a647bfc9ea960ec4c0",
"assets/assets/images/unknown_sprites_8.png": "3402b81a4b1fe054460886d6dacdef97",
"assets/assets/images/unknown_sprites_9.png": "b409bb1537f0449054258b11eae1cc1f",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "6051b062da7d0a683334221d2a1163cf",
"assets/shaders/ink_sparkle.frag": "0459767a875bdf58a45c0d78cac97588",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9a15bdf5384812620f9a39cd0a6fd34b",
"/": "9a15bdf5384812620f9a39cd0a6fd34b",
"main.dart.js": "fb0e82a962fcda5ebb9eb6399952009f",
"manifest.json": "3873e03f149d1d3fe908bdc851b891f3",
"version.json": "765d559b498189c6f4f8f7cf3571babf"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
