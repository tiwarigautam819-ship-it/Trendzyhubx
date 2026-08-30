package com.google.android.gms.internal.measurement;

import com.getcapacitor.Bridge;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r7 implements s7 {
    public static final e5 A;
    public static final e5 B;
    public static final e5 C;
    public static final e5 D;
    public static final e5 E;
    public static final e5 F;
    public static final e5 G;
    public static final e5 H;
    public static final e5 I;
    public static final e5 J;
    public static final e5 K;
    public static final e5 L;
    public static final e5 M;
    public static final e5 N;
    public static final e5 O;
    public static final e5 P;
    public static final e5 Q;
    public static final e5 R;
    public static final e5 S;
    public static final e5 T;
    public static final e5 U;
    public static final e5 V;
    public static final e5 W;
    public static final e5 X;
    public static final e5 Y;
    public static final e5 Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1857a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final e5 f1858a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1859b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final e5 f1860b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5 f1861c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final e5 f1862c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e5 f1863d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final e5 f1864d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e5 f1865e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final e5 f1866e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e5 f1867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final e5 f1868g;
    public static final e5 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final e5 f1869i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final e5 f1870j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final e5 f1871k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final e5 f1872l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final e5 f1873m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final e5 f1874n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final e5 f1875o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final e5 f1876p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final e5 f1877q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final e5 f1878r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final e5 f1879s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final e5 f1880t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final e5 f1881u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final e5 f1882v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final e5 f1883w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final e5 f1884x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final e5 f1885y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final e5 f1886z;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f1857a = f5Var.a("measurement.ad_id_cache_time", 10000L);
        f1859b = f5Var.a("measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L);
        f1861c = f5Var.c("measurement.config.bundle_for_all_apps_on_backgrounded", true);
        f1863d = f5Var.a("measurement.max_bundles_per_iteration", 100L);
        f1865e = f5Var.a("measurement.config.cache_time", 86400000L);
        f5Var.b("measurement.log_tag", "FA");
        f1867f = f5Var.b("measurement.config.url_authority", "app-measurement.com");
        f1868g = f5Var.b("measurement.config.url_scheme", Bridge.CAPACITOR_HTTPS_SCHEME);
        h = f5Var.a("measurement.upload.debug_upload_interval", 1000L);
        f1869i = f5Var.a("measurement.session.engagement_interval", 3600000L);
        f1870j = f5Var.b("measurement.rb.attribution.event_params", "value|currency");
        f5Var.a("measurement.id.rb.attribution.app_allowlist", 0L);
        f1871k = f5Var.a("measurement.upload.google_signal_max_queue_time", 605000L);
        f1872l = f5Var.b("measurement.sgtm.google_signal.url", "https://app-measurement.com/s/d");
        f1873m = f5Var.a("measurement.lifetimevalue.max_currency_tracked", 4L);
        f1874n = f5Var.a("measurement.dma_consent.max_daily_dcu_realtime_events", 1L);
        f1875o = f5Var.a("measurement.upload.max_event_parameter_value_length", 500L);
        f1876p = f5Var.a("measurement.store.max_stored_events_per_app", 100000L);
        f1877q = f5Var.a("measurement.experiment.max_ids", 50L);
        f1878r = f5Var.a("measurement.audience.filter_result_max_count", 200L);
        f1879s = f5Var.a("measurement.upload.max_item_scoped_custom_parameters", 27L);
        f1880t = f5Var.a("measurement.rb.max_trigger_registrations_per_day", 0L);
        f1881u = f5Var.a("measurement.rb.attribution.max_trigger_uris_queried_at_once", 0L);
        f1882v = f5Var.a("measurement.rb.attribution.client.min_ad_services_version", 7L);
        f1883w = f5Var.a("measurement.alarm_manager.minimum_interval", 60000L);
        f1884x = f5Var.a("measurement.upload.minimum_delay", 500L);
        f1885y = f5Var.a("measurement.monitoring.sample_period_millis", 86400000L);
        f1886z = f5Var.c("measurement.config.notify_trigger_uris_on_backgrounded", true);
        A = f5Var.b("measurement.rb.attribution.app_allowlist", "com.labpixies.flood,com.sofascore.results,games.spearmint.triplecrush,com.block.juggle,io.supercent.linkedcubic,com.cdtg.gunsound,com.corestudios.storemanagementidle,com.cdgames.fidget3d,io.supercent.burgeridle,io.supercent.pizzaidle,jp.ne.ibis.ibispaintx.app,com.dencreak.dlcalculator,com.ebay.kleinanzeigen,de.wetteronline.wetterapp,com.game.shape.shift,com.champion.cubes,bubbleshooter.orig,com.wolt.android,com.master.hotelmaster,com.games.bus.arrival,com.playstrom.dop2,com.huuuge.casino.slots,com.ig.spider.fighting,com.jura.coloring.page,com.rikkogame.ragdoll2,com.ludo.king,com.sigma.prank.sound.haircut,com.crazy.block.robo.monster.cliffs.craft,com.fugo.wow,com.maps.locator.gps.gpstracker.phone,com.gamovation.tileclub,com.pronetis.ironball2,com.meesho.supply,pdf.pdfreader.viewer.editor.free,com.dino.race.master,com.ig.moto.racing,ai.photo.enhancer.photoclear,com.duolingo,com.candle.magic_piano,com.free.vpn.super.hotspot.open,sg.bigo.live,com.cdg.tictactoe,com.zhiliaoapp.musically.go,com.wildspike.wormszone,com.mast.status.video.edit,com.vyroai.photoeditorone,com.pujiagames.deeeersimulator,com.superbinogo.jungleboyadventure,com.trustedapp.pdfreaderpdfviewer,com.artimind.aiart.artgenerator.artavatar,de.cellular.ottohybrid,com.zeptolab.cats.google,in.crossy.daily_crossword");
        B = f5Var.a("measurement.upload.realtime_upload_interval", 10000L);
        C = f5Var.a("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        f5Var.a("measurement.config.cache_time.service", 3600000L);
        D = f5Var.a("measurement.service_client.idle_disconnect_millis", 5000L);
        f5Var.b("measurement.log_tag.service", "FA-SVC");
        E = f5Var.b("measurement.sgtm.app_allowlist", "de.zalando.mobile.internal,de.zalando.mobile.internal.debug,de.zalando.lounge.dev,grit.storytel.app,com.rbc.mobile.android,com.rbc.mobile.android,com.dylvian.mango.activities,com.home24.android,com.home24.android.staging,se.lf.mobile.android,se.lf.mobile.android.beta,se.lf.mobile.android.rc,se.lf.mobile.android.test,se.lf.mobile.android.test.debug,com.boots.flagship.android,com.boots.flagshiproi.android,de.zalando.mobile,com.trivago,com.getyourguide.android,es.mobail.meliarewards,se.nansen.coop.debug,se.nansen.coop,se.coop.coop.qa,com.booking,com.google.firebaseengage,com.mse.mseapp.dev,com.mse.mseapp,pl.eobuwie.eobuwieapp,br.com.eventim.mobile.app.Android,ch.ticketcorner.mobile.app.Android,de.eventim.mobile.app.Android,dk.billetlugen.mobile.app.Android,nl.eventim.mobile.app.Android,com.asos.app,com.blueshieldca.prod,dk.magnetix.tivoliapp,matas.matas.internal,nl.omoda,com.thetrainline,com.simo.androidtest,de.aboutyou.mobile.app,com.hometogo,de.casamundo.casamundomobile,it.casevacanz,eu.coolblue.shop,com.stihl.app,com.indeed.android.jobsearch,com.homeretailgroup.argos.android,com.dylvian.mango.activities.pre,se.nansen.coop.qa");
        F = f5Var.a("measurement.upload.stale_data_deletion_interval", 86400000L);
        G = f5Var.b("measurement.rb.attribution.uri_authority", "google-analytics.com");
        H = f5Var.a("measurement.rb.attribution.max_queue_time", 1209600000L);
        I = f5Var.b("measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion");
        J = f5Var.b("measurement.rb.attribution.query_parameters_to_remove", "");
        K = f5Var.b("measurement.rb.attribution.uri_scheme", Bridge.CAPACITOR_HTTPS_SCHEME);
        L = f5Var.a("measurement.sdk.attribution.cache.ttl", 604800000L);
        M = f5Var.a("measurement.redaction.app_instance_id.ttl", 7200000L);
        N = f5Var.a("measurement.upload.backoff_period", 43200000L);
        O = f5Var.a("measurement.upload.initial_upload_delay_time", 15000L);
        P = f5Var.a("measurement.upload.interval", 3600000L);
        Q = f5Var.a("measurement.upload.max_bundle_size", 65536L);
        R = f5Var.a("measurement.upload.max_bundles", 100L);
        S = f5Var.a("measurement.upload.max_conversions_per_day", 500L);
        T = f5Var.a("measurement.upload.max_error_events_per_day", 1000L);
        U = f5Var.a("measurement.upload.max_events_per_bundle", 1000L);
        V = f5Var.a("measurement.upload.max_events_per_day", 100000L);
        W = f5Var.a("measurement.upload.max_public_events_per_day", 50000L);
        X = f5Var.a("measurement.upload.max_queue_time", 518400000L);
        Y = f5Var.a("measurement.upload.max_realtime_events_per_day", 10L);
        Z = f5Var.a("measurement.upload.max_batch_size", 65536L);
        f1858a0 = f5Var.a("measurement.upload.retry_count", 6L);
        f1860b0 = f5Var.a("measurement.upload.retry_time", 1800000L);
        f1862c0 = f5Var.b("measurement.upload.url", "https://app-measurement.com/a");
        f1864d0 = f5Var.a("measurement.upload.window_interval", 3600000L);
        f1866e0 = f5Var.b("measurement.rb.attribution.user_properties", "_npa,npa|_fot,fot");
    }
}
