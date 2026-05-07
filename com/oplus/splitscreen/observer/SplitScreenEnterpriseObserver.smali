.class public Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final DISABLE_SPLITSCREEN_ACTION:Ljava/lang/String; = "enterprise.intent.action.DISABLE_SPLITSCREEN"

.field private static final KEY_DISABLE_SPLITSCREEN_STATUS:Ljava/lang/String; = "disableStatus"

.field private static final TAG:Ljava/lang/String; = "SplitScreenEnterpriseObserver"

.field private static final sInstance:Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;

    invoke-direct {v0}, Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;->sInstance:Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;->sInstance:Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p0, "SplitScreenEnterpriseObserver"

    const-string p1, "split screen enterprise observer receive"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "disableStatus"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    const/16 p0, 0x64

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenMode(I)V

    :cond_1b
    return-void
.end method

.method public registerObserver(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "enterprise.intent.action.DISABLE_SPLITSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "SplitScreenEnterpriseObserver"

    const-string p1, "split screen enterprise observer registered"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
