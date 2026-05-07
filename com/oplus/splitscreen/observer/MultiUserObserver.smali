.class public Lcom/oplus/splitscreen/observer/MultiUserObserver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserObserver"

.field private static final sInstance:Lcom/oplus/splitscreen/observer/MultiUserObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/splitscreen/observer/MultiUserObserver;

    invoke-direct {v0}, Lcom/oplus/splitscreen/observer/MultiUserObserver;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/observer/MultiUserObserver;->sInstance:Lcom/oplus/splitscreen/observer/MultiUserObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/observer/MultiUserObserver;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/observer/MultiUserObserver;->sInstance:Lcom/oplus/splitscreen/observer/MultiUserObserver;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p0, "MultiUserObserver"

    const-string p2, "multi user switch"

    invoke-static {p0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->getInstance()Lcom/oplus/splitscreen/observer/SplitScreenObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->userSwitch(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;->getInstance()Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;->userSwitch(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->getInstance()Lcom/oplus/splitscreen/SplitScreenGuideManager;

    move-result-object p0

    const-string p1, "ACTION_USER_SWITCHED"

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->dismissGuidDialog(Ljava/lang/String;)V

    return-void
.end method

.method public registerObserver(Landroid/content/Context;)V
    .registers 8

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p0, "MultiUserObserver"

    const-string p1, "multi user observer registered"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
