.class Lcom/nearme/instant/xcard/CardClient$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/instant/xcard/CardClient;->initPlatformPackageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nearme/instant/xcard/CardClient;


# direct methods
.method public constructor <init>(Lcom/nearme/instant/xcard/CardClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/instant/xcard/CardClient$4;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {p1}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_5e

    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {p1}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/nearme/instant/xcard/CardClient$4;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {p2}, Lcom/nearme/instant/xcard/CardClient;->access$300(Lcom/nearme/instant/xcard/CardClient;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->checkEngineUpdateAsync(Landroid/content/Context;Z)V

    iget-object p2, p0, Lcom/nearme/instant/xcard/CardClient$4;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {p2}, Lcom/nearme/instant/xcard/CardClient;->access$400(Lcom/nearme/instant/xcard/CardClient;)Lcom/nearme/instant/xcard/OnPackageChangeListener;

    move-result-object p2

    if-eqz p2, :cond_5e

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient$4;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardClient;->access$400(Lcom/nearme/instant/xcard/CardClient;)Lcom/nearme/instant/xcard/OnPackageChangeListener;

    move-result-object p0

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p0, p2, v0, p1}, Lcom/nearme/instant/xcard/OnPackageChangeListener;->onPackageChanged(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_5e
    :goto_5e
    return-void
.end method
