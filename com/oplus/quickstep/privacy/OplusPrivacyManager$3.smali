.class Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->initPackageBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;->this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;->this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->access$200(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    if-eqz p2, :cond_5a

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_5a

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPackageStateChange: action = "

    const-string v2, ", packageName = "

    invoke-static {v1, p1, v2, v0}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusPrivacyManager"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_5a

    :cond_31
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const/4 v4, 0x0

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_43

    return-void

    :cond_43
    if-eqz p1, :cond_55

    const-string p1, "onPackageStateChange: updateProtectedAppList in thread pool."

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/oplus/quickstep/privacy/a;

    invoke-direct {p2, p0, v0}, Lcom/oplus/quickstep/privacy/a;-><init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_5a

    :cond_55
    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;->this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->updateProtectedSupportedData(Ljava/lang/String;Z)V

    :cond_5a
    :goto_5a
    return-void
.end method
