.class public Lcom/oplus/fancyicon/data/binder/VariableBinderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"

.field private static sWeatherServiceExistsFlag:I


# instance fields
.field private mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/data/binder/VariableBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz p1, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    :cond_11
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)Lcom/oplus/fancyicon/data/binder/VariableBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    const-string v1, "ContentProviderBinder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p0, p1, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->createContentProviderBinder(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p2, "SensorBinder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    new-instance p2, Lcom/oplus/fancyicon/data/binder/SensorBinder;

    invoke-direct {p2, p0, p1}, Lcom/oplus/fancyicon/data/binder/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p2

    :cond_1f
    const-string p2, "BroadcastBinder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    new-instance p2, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;

    invoke-direct {p2, p0, p1}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p2

    :cond_2d
    const-string p2, "FileBinder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_45

    new-instance p2, Lcom/oplus/fancyicon/data/binder/FileBinder;

    invoke-direct {p2, p0, p1}, Lcom/oplus/fancyicon/data/binder/FileBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    :try_end_3a
    .catch Lcom/oplus/fancyicon/ScreenElementLoadException; {:try_start_4 .. :try_end_3a} :catch_3b

    return-object p2

    :catch_3b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VariableBinderManager"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createContentProviderBinder(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "uriExp"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v5

    const-string v0, "uriFormatExp"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v6

    new-instance v0, Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v1, "uri"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "uriFormat"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "uriParas"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/util/TextFormatter;->getText(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->isQueryWeatherInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "content://com.oplusos.weather.service.provider.data/weather_info"

    if-eqz v1, :cond_4a

    invoke-static {v1}, Lcom/oplus/fancyicon/util/WeatherServiceVersionUtils;->isCommonWeatherServiceExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_50

    :cond_4a
    invoke-static {p1}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->weatherServiceExists(Lcom/oplus/fancyicon/ScreenElementRoot;)Z

    move-result v1

    if-eqz v1, :cond_51

    :goto_50
    move-object v0, v2

    :cond_51
    new-instance v1, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;Ljava/lang/String;)V

    goto :goto_70

    :cond_57
    invoke-static {v0}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->isQueryAttentCity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {p1}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->weatherServiceExists(Lcom/oplus/fancyicon/ScreenElementRoot;)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v0, "content://com.oplusos.weather.service.provider.data/attent_city"

    :cond_65
    new-instance v1, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;Ljava/lang/String;)V

    goto :goto_70

    :cond_6b
    new-instance v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;Ljava/lang/String;)V

    :goto_70
    return-object v1
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    if-eqz p1, :cond_29

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_b
    if-ge v0, v1, :cond_28

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-static {v2, p2, p0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)Lcom/oplus/fancyicon/data/binder/VariableBinder;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v3, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_28
    return-void

    :cond_29
    const-string p0, "VariableBinderManager"

    const-string p1, "loadBinders node is null"

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static weatherServiceExists(Lcom/oplus/fancyicon/ScreenElementRoot;)Z
    .registers 7

    sget v0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->sWeatherServiceExistsFlag:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "VariableBinderManager"

    if-nez p0, :cond_14

    const-string p0, "weatherServiceExists error, no context!"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_20

    const-string p0, "weatherServiceExists error, no packageManager!"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_20
    const/4 v3, -0x1

    sput v3, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->sWeatherServiceExistsFlag:I

    const/4 v3, 0x0

    :try_start_24
    sget-object v4, Lcom/oplus/fancyicon/util/WeatherServiceVersionUtils;->mWeatherServicePkg:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    const-string p0, "getWeatherService, no package weatherservice!"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    if-eqz v3, :cond_36

    sput v1, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->sWeatherServiceExistsFlag:I

    :cond_36
    sget p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->sWeatherServiceExistsFlag:I

    if-lez p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    return v1
.end method


# virtual methods
.method public addContentProviderBinder(Lcom/oplus/fancyicon/util/TextFormatter;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 4

    new-instance v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;)V

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/fancyicon/util/TextFormatter;->getText(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;-><init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Lcom/oplus/fancyicon/data/Variables;)V

    return-object p1
.end method

.method public addContentProviderBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/util/TextFormatter;

    invoke-direct {v0, p1}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->addContentProviderBinder(Lcom/oplus/fancyicon/util/TextFormatter;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 5

    new-instance v0, Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, p1, p2, v1}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->addContentProviderBinder(Lcom/oplus/fancyicon/util/TextFormatter;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    return-object p0
.end method

.method public findBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/VariableBinder;
    .registers 4

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->init()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    instance-of v1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->startQuery()V

    goto :goto_8

    :cond_2e
    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->onRenderThreadStoped()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public pause()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->pause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public refresh()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->refresh()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public resume()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->resume()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public tick()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->tick()V

    goto :goto_6

    :cond_16
    return-void
.end method
