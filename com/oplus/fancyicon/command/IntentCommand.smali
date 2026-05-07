.class public Lcom/oplus/fancyicon/command/IntentCommand;
.super Lcom/oplus/fancyicon/command/ActionCommand;
.source ""


# static fields
.field private static final FLASHLIGHT:Ljava/lang/String; = ".flashlight"

.field private static final GAME_HONOR:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field private static final MARKET_PACKAGE_NEW:Ljava/lang/String; = "com.heytap.market"

.field private static final MARKET_URI:Ljava/lang/String; = "market://details?id="

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mEnded:Z

.field private mIntent:Landroid/content/Intent;

.field private mTask:Lcom/oplus/fancyicon/util/Task;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/command/ActionCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mEnded:Z

    invoke-static {p2}, Lcom/oplus/fancyicon/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/oplus/fancyicon/util/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    return-void
.end method

.method private compatIntent()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1d

    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    sget-object v1, Lcom/oplus/fancyicon/util/IntentUtils;->CAMERA_PKG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    :cond_35
    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/util/IntentUtils;->isIntentUsable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/util/IntentUtils;->compatUnUsableIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    :cond_55
    sget-object v1, Lcom/oplus/fancyicon/util/IntentUtils;->GALLERY_PKG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    :cond_7a
    return-void
.end method

.method private openFlashlight(Landroid/content/Context;)V
    .registers 4

    const-string p0, "IntentCommand"

    :try_start_2
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    if-eqz p1, :cond_13

    const-string v0, "0"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    goto :goto_2e

    :cond_13
    const-string p1, "error: manager = null"

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_2e

    :catch_19
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 6

    const-string v0, "market://details?id="

    iget-boolean v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mEnded:Z

    if-nez v1, :cond_d5

    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_d5

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".flashlight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/command/IntentCommand;->openFlashlight(Landroid/content/Context;)V

    return-void

    :cond_38
    invoke-direct {p0}, Lcom/oplus/fancyicon/command/IntentCommand;->compatIntent()V

    :try_start_3b
    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    iget-object v3, v1, Lcom/oplus/fancyicon/util/Task;->mPackageName:Ljava/lang/String;

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    if-eqz v1, :cond_49

    iget-boolean v1, v1, Lcom/oplus/fancyicon/util/Task;->mEnterMarket:Z

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v4}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/oplus/fancyicon/util/Utils;->checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ce

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    :cond_68
    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    if-eqz v1, :cond_6e

    iget-object v2, v1, Lcom/oplus/fancyicon/util/Task;->mMarketData:Ljava/lang/String;

    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9d

    const-string v1, "!"

    const-string v4, "&"

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "IntentCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPerform, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.heytap.market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->startActivity(Landroid/content/Intent;)V

    goto :goto_d5

    :cond_ce
    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object p0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->startActivity(Landroid/content/Intent;)V
    :try_end_d5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3b .. :try_end_d5} :catch_d5

    :catch_d5
    :cond_d5
    :goto_d5
    return-void
.end method

.method public end()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mEnded:Z

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public init()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v0, v0, Lcom/oplus/fancyicon/util/Task;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v1, v1, Lcom/oplus/fancyicon/util/Task;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v0, v0, Lcom/oplus/fancyicon/util/Task;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v1, v1, Lcom/oplus/fancyicon/util/Task;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_28
    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v0, v0, Lcom/oplus/fancyicon/util/Task;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v1, v1, Lcom/oplus/fancyicon/util/Task;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3b
    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v0, v0, Lcom/oplus/fancyicon/util/Task;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v0, v0, Lcom/oplus/fancyicon/util/Task;->mClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-object v3, v2, Lcom/oplus/fancyicon/util/Task;->mPackageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/oplus/fancyicon/util/Task;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_5f
    const/high16 v0, 0x34000000

    iget-object v1, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mTask:Lcom/oplus/fancyicon/util/Task;

    iget-boolean v1, v1, Lcom/oplus/fancyicon/util/Task;->mAnim:Z

    if-nez v1, :cond_69

    const/high16 v0, 0x34010000

    :cond_69
    iget-object p0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_6e
    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mEnded:Z

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/command/ActionCommand;->resume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/IntentCommand;->mEnded:Z

    return-void
.end method
