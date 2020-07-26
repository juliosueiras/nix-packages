{
  combine = {
    builder = "mix";
    fetchHex = {
      sha256 = "eff8224eeb56498a2af13011d142c5e7997a80c8f5b97c499f84c841032e429f";
      url = "https://repo.hex.pm/tarballs/combine-0.10.0.tar";
    };
    version = "0.10.0";
  };
  db_connection = {
    builder = "mix";
    deps = [
      "connection"
      "poolboy"
    ];
    fetchHex = {
      sha256 = "89b30ca1ef0a3b469b1c779579590688561d586694a3ce8792985d4d7e575a61";
      url = "https://repo.hex.pm/tarballs/db_connection-1.1.3.tar";
    };
    version = "1.1.3";
  };
  quantum = {
    builder = "mix";
    deps = [
      "crontab"
      "gen_stage"
      "swarm"
      "timex"
    ];
    fetchHex = {
      sha256 = "83f565de81ac43b8fda4dd4266b209eaed29545d1c41e17aa6b75b08736c80f6";
      url = "https://repo.hex.pm/tarballs/quantum-2.3.3.tar";
    };
    version = "2.3.3";
  };
  briefly = {
    builder = "mix";
    fetchHex = {
      sha256 = "16e6b76d2070ebc9cbd025fa85cf5dbaf52368c4bd896fb482b5a6b95a540c2f";
      url = "https://repo.hex.pm/tarballs/briefly-0.3.0.tar";
    };
    version = "0.3.0";
  };
  phoenix_live_reload = {
    builder = "mix";
    deps = [
      "file_system"
      "phoenix"
    ];
    fetchHex = {
      sha256 = "1d178429fc8950b12457d09c6afec247bfe1fcb6f36209e18fbb0221bdfe4d41";
      url = "https://repo.hex.pm/tarballs/phoenix_live_reload-1.1.3.tar";
    };
    version = "1.1.3";
  };
  decimal = {
    builder = "mix";
    fetchHex = {
      sha256 = "b0433a36d0e2430e3d50291b1c65f53c37d56f83665b43d79963684865beab68";
      url = "https://repo.hex.pm/tarballs/decimal-1.5.0.tar";
    };
    version = "1.5.0";
  };
  plug = {
    builder = "mix";
    deps = [
      "mime"
      "plug_crypto"
    ];
    fetchHex = {
      sha256 = "8516d565fb84a6a8b2ca722e74e2cd25ca0fc9d64f364ec9dbec09d33eb78ccd";
      url = "https://repo.hex.pm/tarballs/plug-1.7.1.tar";
    };
    version = "1.7.1";
  };
  crontab = {
    builder = "mix";
    deps = [
      "ecto"
    ];
    fetchHex = {
      sha256 = "2c9439506ceb0e9045de75879e994b88d6f0be88bfe017d58cb356c66c4a5482";
      url = "https://repo.hex.pm/tarballs/crontab-1.1.5.tar";
    };
    version = "1.1.5";
  };
  plug_cowboy = {
    builder = "mix";
    deps = [
      "cowboy"
      "plug"
    ];
    fetchHex = {
      sha256 = "2e2a7d3409746d335f451218b8bb0858301c3de6d668c3052716c909936eb57a";
      url = "https://repo.hex.pm/tarballs/plug_cowboy-1.0.0.tar";
    };
    version = "1.0.0";
  };
  phoenix_markdown = {
    builder = "mix";
    deps = [
      "earmark"
      "phoenix"
      "phoenix_html"
    ];
    fetchHex = {
      sha256 = "246727d998997c6b90374a678bbdca5b300dcbbfecb29dbcca8a7891751f6cd5";
      url = "https://repo.hex.pm/tarballs/phoenix_markdown-0.1.4.tar";
    };
    version = "0.1.4";
  };
  bamboo = {
    builder = "mix";
    deps = [
      "hackney"
      "plug"
      "poison"
    ];
    fetchHex = {
      sha256 = "8aebd24f7c606c32d0163c398004a11608ca1028182a169b2e527793bfab7561";
      url = "https://repo.hex.pm/tarballs/bamboo-1.2.0.tar";
    };
    version = "1.2.0";
  };
  ex_aws = {
    builder = "mix";
    deps = [
      "hackney"
      "poison"
    ];
    fetchHex = {
      sha256 = "789173f385934f7e27f9ef36692a6c5f7dde06fd6e6f64d4cd92cda613d34bf9";
      url = "https://repo.hex.pm/tarballs/ex_aws-1.1.5.tar";
    };
    version = "1.1.5";
  };
  mochiweb = {
    builder = "rebar3";
    fetchHex = {
      sha256 = "eb55f1db3e6e960fac4e6db4e2db9ec3602cc9f30b86cd1481d56545c3145d2e";
      url = "https://repo.hex.pm/tarballs/mochiweb-2.18.0.tar";
    };
    version = "2.18.0";
  };
  elixir_uuid = {
    builder = "mix";
    fetchHex = {
      sha256 = "ff26e938f95830b1db152cb6e594d711c10c02c6391236900ddd070a6b01271d";
      url = "https://repo.hex.pm/tarballs/elixir_uuid-1.2.0.tar";
    };
    version = "1.2.0";
  };
  ecto = {
    builder = "mix";
    deps = [
      "db_connection"
      "decimal"
      "poison"
      "poolboy"
      "postgrex"
    ];
    fetchHex = {
      sha256 = "e7366dc82f48f8dd78fcbf3ab50985ceeb11cb3dc93435147c6e13f2cda0992e";
      url = "https://repo.hex.pm/tarballs/ecto-2.2.10.tar";
    };
    version = "2.2.10";
  };
  redix = {
    builder = "mix";
    deps = [
      "connection"
    ];
    fetchHex = {
      sha256 = "25a6c1c0d9b2d12a35aef759f9e49bd9bca00e0cd857ce766412f08fdda72163";
      url = "https://repo.hex.pm/tarballs/redix-0.7.1.tar";
    };
    version = "0.7.1";
  };
  cowlib = {
    builder = "make";
    fetchHex = {
      sha256 = "9d769a1d062c9c3ac753096f868ca121e2730b9a377de23dec0f7e08b1df84ee";
      url = "https://repo.hex.pm/tarballs/cowlib-1.0.2.tar";
    };
    version = "1.0.2";
  };
  scrivener_html = {
    builder = "mix";
    deps = [
      "phoenix"
      "phoenix_html"
      "plug"
      "scrivener"
    ];
    fetchHex = {
      sha256 = "afa35128fb36184bc469e4531bb1ef61b2d91bb29e373157068c62332291485f";
      url = "https://repo.hex.pm/tarballs/scrivener_html-1.7.1.tar";
    };
    version = "1.7.1";
  };
  bunt = {
    builder = "mix";
    fetchHex = {
      sha256 = "951c6e801e8b1d2cbe58ebbd3e616a869061ddadcc4863d0a2182541acae9a38";
      url = "https://repo.hex.pm/tarballs/bunt-0.2.0.tar";
    };
    version = "0.2.0";
  };
  bamboo_smtp = {
    builder = "mix";
    deps = [
      "bamboo"
      "gen_smtp"
    ];
    fetchHex = {
      sha256 = "0a3607b77f22554af58c547350c1c73ebba6f4fb2c4bd0b11713ab5b4081588f";
      url = "https://repo.hex.pm/tarballs/bamboo_smtp-1.6.0.tar";
    };
    version = "1.6.0";
  };
  jason = {
    builder = "mix";
    deps = [
      "decimal"
    ];
    fetchHex = {
      sha256 = "d3ccb840dfb06f2f90a6d335b536dd074db748b3e7f5b11ab61d239506585eb2";
      url = "https://repo.hex.pm/tarballs/jason-1.1.1.tar";
    };
    version = "1.1.1";
  };
  distillery = {
    builder = "mix";
    deps = [
      "artificery"
    ];
    fetchHex = {
      sha256 = "9259399cb64c88e2df6bbaef29e09b0a81d16d0155203ebf65c6be7b95f7b744";
      url = "https://repo.hex.pm/tarballs/distillery-2.0.11.tar";
    };
    version = "2.0.11";
  };
  mime = {
    builder = "mix";
    fetchHex = {
      sha256 = "30ce04ab3175b6ad0bdce0035cba77bba68b813d523d1aac73d9781b4d193cf8";
      url = "https://repo.hex.pm/tarballs/mime-1.3.1.tar";
    };
    version = "1.3.1";
  };
  phoenix_pubsub = {
    builder = "mix";
    fetchHex = {
      sha256 = "d55e25ff1ff8ea2f9964638366dfd6e361c52dedfd50019353598d11d4441d14";
      url = "https://repo.hex.pm/tarballs/phoenix_pubsub-1.1.0.tar";
    };
    version = "1.1.0";
  };
  earmark = {
    builder = "mix";
    fetchHex = {
      sha256 = "206eb2e2ac1a794aa5256f3982de7a76bf4579ff91cb28d0e17ea2c9491e46a4";
      url = "https://repo.hex.pm/tarballs/earmark-1.2.3.tar";
    };
    version = "1.2.3";
  };
  unicode_util_compat = {
    builder = "rebar3";
    fetchHex = {
      sha256 = "d869e4c68901dd9531385bb0c8c40444ebf624e60b6962d95952775cac5e90cd";
      url = "https://repo.hex.pm/tarballs/unicode_util_compat-0.4.1.tar";
    };
    version = "0.4.1";
  };
  idna = {
    builder = "rebar3";
    deps = [
      "unicode_util_compat"
    ];
    fetchHex = {
      sha256 = "689c46cbcdf3524c44d5f3dde8001f364cd7608a99556d8fbd8239a5798d4c10";
      url = "https://repo.hex.pm/tarballs/idna-6.0.0.tar";
    };
    version = "6.0.0";
  };
  mimerl = {
    builder = "rebar3";
    fetchHex = {
      sha256 = "993f9b0e084083405ed8252b99460c4f0563e41729ab42d9074fd5e52439be88";
      url = "https://repo.hex.pm/tarballs/mimerl-1.0.2.tar";
    };
    version = "1.0.2";
  };
  connection = {
    builder = "mix";
    fetchHex = {
      sha256 = "a1cae72211f0eef17705aaededacac3eb30e6625b04a6117c1b2db6ace7d5976";
      url = "https://repo.hex.pm/tarballs/connection-1.0.4.tar";
    };
    version = "1.0.4";
  };
  exq = {
    builder = "mix";
    deps = [
      "elixir_uuid"
      "poison"
      "redix"
    ];
    fetchHex = {
      sha256 = "7f4557a13a7fcfb159b318ee3275a1f2c38a572847d4cf8d47e303a15d0807b4";
      url = "https://repo.hex.pm/tarballs/exq-0.12.2.tar";
    };
    version = "0.12.2";
  };
  poolboy = {
    builder = "rebar";
    fetchHex = {
      sha256 = "6b46163901cfd0a1b43d692657ed9d7e599853b3b21b95ae5ae0a777cf9b6ca8";
      url = "https://repo.hex.pm/tarballs/poolboy-1.5.1.tar";
    };
    version = "1.5.1";
  };
  gettext = {
    builder = "mix";
    fetchHex = {
      sha256 = "5e0daf4e7636d771c4c71ad5f3f53ba09a9ae5c250e1ab9c42ba9edccc476263";
      url = "https://repo.hex.pm/tarballs/gettext-0.13.1.tar";
    };
    version = "0.13.1";
  };
  phoenix_html = {
    builder = "mix";
    deps = [
      "plug"
    ];
    fetchHex = {
      sha256 = "1fb3c2e48b4b66d75564d8d63df6d53655469216d6b553e7e14ced2b46f97622";
      url = "https://repo.hex.pm/tarballs/phoenix_html-2.12.0.tar";
    };
    version = "2.12.0";
  };
  credo = {
    builder = "mix";
    deps = [
      "bunt"
      "jason"
    ];
    fetchHex = {
      sha256 = "66234a95effaf9067edb19fc5d0cd5c6b461ad841baac42467afed96c78e5e9e";
      url = "https://repo.hex.pm/tarballs/credo-0.10.0.tar";
    };
    version = "0.10.0";
  };
  cowboy = {
    builder = "rebar3";
    deps = [
      "cowlib"
      "ranch"
    ];
    fetchHex = {
      sha256 = "61ac29ea970389a88eca5a65601460162d370a70018afe6f949a29dca91f3bb0";
      url = "https://repo.hex.pm/tarballs/cowboy-1.1.2.tar";
    };
    version = "1.1.2";
  };
  scrivener_ecto = {
    builder = "mix";
    deps = [
      "ecto"
      "postgrex"
      "scrivener"
    ];
    fetchHex = {
      sha256 = "69698428e22810ac8a47abc12d1df5b2f5d8f6b36dc5d5bfe6dd93fde857c576";
      url = "https://repo.hex.pm/tarballs/scrivener_ecto-1.3.0.tar";
    };
    version = "1.3.0";
  };
  hackney = {
    builder = "rebar3";
    deps = [
      "certifi"
      "idna"
      "metrics"
      "mimerl"
      "ssl_verify_fun"
    ];
    fetchHex = {
      sha256 = "287a5d2304d516f63e56c469511c42b016423bcb167e61b611f6bad47e3ca60e";
      url = "https://repo.hex.pm/tarballs/hackney-1.15.0.tar";
    };
    version = "1.15.0";
  };
  html_sanitize_ex = {
    builder = "mix";
    deps = [
      "mochiweb"
    ];
    fetchHex = {
      sha256 = "f005ad692b717691203f940c686208aa3d8ffd9dd4bb3699240096a51fa9564e";
      url = "https://repo.hex.pm/tarballs/html_sanitize_ex-1.3.0.tar";
    };
    version = "1.3.0";
  };
  sentry = {
    builder = "mix";
    deps = [
      "hackney"
      "phoenix"
      "plug"
      "poison"
    ];
    fetchHex = {
      sha256 = "71b3cf8ce6dbf7816b8086eb8f221fd7fd71cefdbf7461094c628785cae6a67c";
      url = "https://repo.hex.pm/tarballs/sentry-6.4.2.tar";
    };
    version = "6.4.2";
  };
  artificery = {
    builder = "mix";
    fetchHex = {
      sha256 = "f602909757263f7897130cbd006b0e40514a541b148d366ad65b89236b93497a";
      url = "https://repo.hex.pm/tarballs/artificery-0.2.6.tar";
    };
    version = "0.2.6";
  };
  ssl_verify_fun = {
    builder = "mix";
    fetchHex = {
      sha256 = "f0eafff810d2041e93f915ef59899c923f4568f4585904d010387ed74988e77b";
      url = "https://repo.hex.pm/tarballs/ssl_verify_fun-1.1.4.tar";
    };
    version = "1.1.4";
  };
  gen_stage = {
    builder = "mix";
    fetchHex = {
      sha256 = "9d46723fda072d4f4bb31a102560013f7960f5d80ea44dcb96fd6304ed61e7a4";
      url = "https://repo.hex.pm/tarballs/gen_stage-0.14.1.tar";
    };
    version = "0.14.1";
  };
  phoenix_ecto = {
    builder = "mix";
    deps = [
      "ecto"
      "phoenix_html"
      "plug"
    ];
    fetchHex = {
      sha256 = "91cd39427006fe4b5588d69f0941b9c3d3d8f5e6477c563a08379de7de2b0c58";
      url = "https://repo.hex.pm/tarballs/phoenix_ecto-3.4.0.tar";
    };
    version = "3.4.0";
  };
  timex_ecto = {
    builder = "mix";
    deps = [
      "ecto"
      "timex"
    ];
    fetchHex = {
      sha256 = "461140751026e1ca03298fab628f78ab189e78784175f5e301eefa034ee530aa";
      url = "https://repo.hex.pm/tarballs/timex_ecto-3.2.1.tar";
    };
    version = "3.2.1";
  };
  ranch = {
    builder = "rebar3";
    fetchHex = {
      sha256 = "e4965a144dc9fbe70e5c077c65e73c57165416a901bd02ea899cfd95aa890986";
      url = "https://repo.hex.pm/tarballs/ranch-1.3.2.tar";
    };
    version = "1.3.2";
  };
  uuid = {
    builder = "mix";
    fetchHex = {
      sha256 = "e22fc04499de0de3ed1116b770c7737779f226ceefa0badb3592e64d5cfb4eb9";
      url = "https://repo.hex.pm/tarballs/uuid-1.1.8.tar";
    };
    version = "1.1.8";
  };
  exq_ui = {
    builder = "mix";
    deps = [
      "cowboy"
      "exq"
      "plug"
    ];
    fetchHex = {
      sha256 = "e97e9fa9009f30d2926b51a166e40a3a521e83f61f3f333fede8335b2aa57f09";
      url = "https://repo.hex.pm/tarballs/exq_ui-0.9.0.tar";
    };
    version = "0.9.0";
  };
  inflex = {
    builder = "mix";
    fetchHex = {
      sha256 = "2bef01a84437bca0a12fc107821ae7771b0ba847dccab5d1cd61f35972e66813";
      url = "https://repo.hex.pm/tarballs/inflex-1.9.0.tar";
    };
    version = "1.9.0";
  };
  parse_trans = {
    builder = "rebar3";
    fetchHex = {
      sha256 = "09765507a3c7590a784615cfd421d101aec25098d50b89d7aa1d66646bc571c1";
      url = "https://repo.hex.pm/tarballs/parse_trans-3.3.0.tar";
    };
    version = "3.3.0";
  };
  scrivener = {
    builder = "mix";
    fetchHex = {
      sha256 = "e1f78c62b6806d91cc9c4778deef1ea4e80aa9fadfce2c16831afe0468cc8a2c";
      url = "https://repo.hex.pm/tarballs/scrivener-2.5.0.tar";
    };
    version = "2.5.0";
  };
  gen_state_machine = {
    builder = "mix";
    fetchHex = {
      sha256 = "cc31749b8ee50d42c8db7d96c85637c4c9fdc7a007145c8aa2f371c89148a6ca";
      url = "https://repo.hex.pm/tarballs/gen_state_machine-2.0.4.tar";
    };
    version = "2.0.4";
  };
  file_system = {
    builder = "mix";
    fetchHex = {
      sha256 = "7f1e9de4746f4eb8a4ca8f2fbab582d84a4e40fa394cce7bfcb068b988625b06";
      url = "https://repo.hex.pm/tarballs/file_system-0.2.2.tar";
    };
    version = "0.2.2";
  };
  swarm = {
    builder = "mix";
    deps = [
      "gen_state_machine"
      "libring"
    ];
    fetchHex = {
      sha256 = "b4d29c49310b92b4a84bd3be6a51d9616eaeda1899b7619201d0908d8d789bd8";
      url = "https://repo.hex.pm/tarballs/swarm-3.3.1.tar";
    };
    version = "3.3.1";
  };
  ex_machina = {
    builder = "mix";
    deps = [
      "ecto"
    ];
    fetchHex = {
      sha256 = "4874dc9c78e7cf2d429f24dc3c4005674d4e4da6a08be961ffccc08fb528e28b";
      url = "https://repo.hex.pm/tarballs/ex_machina-2.1.0.tar";
    };
    version = "2.1.0";
  };
  plug_crypto = {
    builder = "mix";
    fetchHex = {
      sha256 = "18e49317d3fa343f24620ed22795ec29d4a5e602d52d1513ccea0b07d8ea7d4d";
      url = "https://repo.hex.pm/tarballs/plug_crypto-1.0.0.tar";
    };
    version = "1.0.0";
  };
  postgrex = {
    builder = "mix";
    deps = [
      "connection"
      "db_connection"
      "decimal"
    ];
    fetchHex = {
      sha256 = "3d931aba29363e1443da167a4b12f06dcd171103c424de15e5f3fc2ba3e6d9c5";
      url = "https://repo.hex.pm/tarballs/postgrex-0.13.5.tar";
    };
    version = "0.13.5";
  };
  gen_smtp = {
    builder = "rebar3";
    fetchHex = {
      sha256 = "97d44903f5ca18ca85cb39aee7d9c77e98d79804bbdef56078adcf905cb2ef00";
      url = "https://repo.hex.pm/tarballs/gen_smtp-0.12.0.tar";
    };
    version = "0.12.0";
  };
  poison = {
    builder = "mix";
    fetchHex = {
      sha256 = "d9eb636610e096f86f25d9a46f35a9facac35609a7591b3be3326e99a0484665";
      url = "https://repo.hex.pm/tarballs/poison-3.1.0.tar";
    };
    version = "3.1.0";
  };
  metrics = {
    builder = "rebar3";
    fetchHex = {
      sha256 = "25f094dea2cda98213cecc3aeff09e940299d950904393b2a29d191c346a8486";
      url = "https://repo.hex.pm/tarballs/metrics-1.0.1.tar";
    };
    version = "1.0.1";
  };
  timex = {
    builder = "mix";
    deps = [
      "combine"
      "gettext"
      "tzdata"
    ];
    fetchHex = {
      sha256 = "d198ae9783ac807721cca0c5535384ebdf99da4976be8cefb9665a9262a1e9e3";
      url = "https://repo.hex.pm/tarballs/timex-3.1.24.tar";
    };
    version = "3.1.24";
  };
  phoenix = {
    builder = "mix";
    deps = [
      "cowboy"
      "phoenix_pubsub"
      "plug"
      "poison"
    ];
    fetchHex = {
      sha256 = "aaa1b55e5523083a877bcbe9886d9ee180bf2c8754905323493c2ac325903dc5";
      url = "https://repo.hex.pm/tarballs/phoenix-1.3.4.tar";
    };
    version = "1.3.4";
  };
  tzdata = {
    builder = "mix";
    deps = [
      "hackney"
    ];
    fetchHex = {
      sha256 = "dfd6a10c1c9ed2b4c6493e35af5da6c37058c9578b2e413d37242d6943ed07d9";
      url = "https://repo.hex.pm/tarballs/tzdata-0.5.13.tar";
    };
    version = "0.5.13";
  };
  libring = {
    builder = "mix";
    fetchHex = {
      sha256 = "41246ba2f3fbc76b3971f6bce83119dfec1eee17e977a48d8a9cfaaf58c2a8d6";
      url = "https://repo.hex.pm/tarballs/libring-1.4.0.tar";
    };
    version = "1.4.0";
  };
  certifi = {
    builder = "rebar3";
    deps = [
      "parse_trans"
    ];
    fetchHex = {
      sha256 = "75424ff0f3baaccfd34b1214184b6ef616d89e420b258bb0a5ea7d7bc628f7f0";
      url = "https://repo.hex.pm/tarballs/certifi-2.4.2.tar";
    };
    version = "2.4.2";
  };
}

