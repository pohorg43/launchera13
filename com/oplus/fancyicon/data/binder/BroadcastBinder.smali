.class public Lcom/oplus/fancyicon/data/binder/BroadcastBinder;
.super Lcom/oplus/fancyicon/data/binder/VariableBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBroadcastVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinder;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mBroadcastVariables:Ljava/util/ArrayList;

    new-instance p2, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$1;

    invoke-direct {p2, p0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$1;-><init>(Lcom/oplus/fancyicon/data/binder/BroadcastBinder;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 4

    const-string v0, "BroadcastBinder"

    if-eqz p1, :cond_3c

    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mName:Ljava/lang/String;

    const-string v1, "action"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/command/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void

    :cond_2f
    const-string p0, "no action in broadcast binder"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no action in broadcast binder element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    const-string p0, "ContentProviderBinder node is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "node is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$2;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$2;-><init>(Lcom/oplus/fancyicon/data/binder/BroadcastBinder;)V

    const-string p0, "Variable"

    invoke-static {p1, p0, v0}, Lcom/oplus/fancyicon/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .registers 15

    if-eqz p1, :cond_d3

    const-string v0, "updateVariables: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastBinder"

    invoke-static {v2, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mBroadcastVariables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->isNumber()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v6, :cond_a9

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeInt()I

    move-result v6

    if-eq v6, v7, :cond_97

    if-eq v6, v10, :cond_8c

    const/4 v11, 0x4

    if-eq v6, v11, :cond_81

    const/4 v11, 0x5

    if-eq v6, v11, :cond_76

    const/4 v11, 0x6

    if-eq v6, v11, :cond_6d

    const-string v5, "invalide type"

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v6, v9

    const-string v11, "%f"

    invoke-static {v5, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a6

    :cond_6d
    iget-object v3, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mExtraName:Ljava/lang/String;

    iget-wide v11, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefNumberValue:D

    invoke-virtual {p1, v3, v11, v12}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    goto :goto_a6

    :cond_76
    iget-object v3, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mExtraName:Ljava/lang/String;

    iget-wide v11, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefNumberValue:D

    double-to-float v4, v11

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    goto :goto_a6

    :cond_81
    iget-object v3, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mExtraName:Ljava/lang/String;

    iget-wide v11, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefNumberValue:D

    double-to-long v11, v11

    invoke-virtual {p1, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-double v3, v3

    goto :goto_a6

    :cond_8c
    iget-object v3, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mExtraName:Ljava/lang/String;

    iget-wide v11, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefNumberValue:D

    double-to-int v4, v11

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    goto :goto_a6

    :cond_97
    iget-object v5, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a2

    iget-object v6, v1, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefStringValue:Ljava/lang/String;

    goto :goto_a3

    :cond_a2
    move-object v6, v5

    :goto_a3
    invoke-virtual {v1, v6}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setStringValue(Ljava/lang/String;)V

    :goto_a6
    invoke-virtual {v1, v3, v4}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setDoubleValue(D)V

    :cond_a9
    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    aput-object v5, v4, v7

    const-string v1, "name:%s type:%s value:%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_d3
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mBroadcastVariables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->init()V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->init()V

    :cond_a
    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->register()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/oplus/fancyicon/command/CommandTrigger;->perform()V

    :cond_a
    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    return-void
.end method

.method public onRegister()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->onRenderThreadStoped()V

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->unregister()V

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->onRenderThreadStoped()V

    return-void
.end method

.method public onUnregister()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->pause()V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/CommandTrigger;->pause()V

    :cond_a
    return-void
.end method

.method public register()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->onRegister()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mRegistered:Z

    :cond_a
    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->resume()V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mTrigger:Lcom/oplus/fancyicon/command/CommandTrigger;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/CommandTrigger;->resume()V

    :cond_a
    return-void
.end method

.method public unregister()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mRegistered:Z

    if-eqz v0, :cond_15

    :try_start_4
    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->onUnregister()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->mRegistered:Z

    :cond_15
    return-void
.end method
