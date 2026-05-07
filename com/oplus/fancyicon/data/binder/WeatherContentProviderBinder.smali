.class public Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;
.super Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder$WeatherTextFormatter;
    }
.end annotation


# static fields
.field public static final CITY_URI_SUFFIX:Ljava/lang/String; = ".weather.provider.data/attent_city"

.field public static final CITY_URI_SUFFIX_NEW:Ljava/lang/String; = ".weather.service.provider.data/attent_city"

.field private static final CURRENT_WEATHER:Ljava/lang/String; = "current_weather"

.field private static final DAY_WEATHER:Ljava/lang/String; = "day_weather"

.field private static final DAY_WEATHER_ID:Ljava/lang/String; = "day_weather_id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final NIGHT_WEATHER:Ljava/lang/String; = "night_weather"

.field private static final NIGHT_WEATHER_ID:Ljava/lang/String; = "night_weather_id"

.field private static final SORT_COLUME_ABOVE_MINUS_ONE:Ljava/lang/String; = "sort>-1"

.field public static final TAG_NAME:Ljava/lang/String; = "WeatherContentProviderBinder"

.field private static final WEATHER_ID:Ljava/lang/String; = "weather_id"

.field public static final WEATHER_INFO:Ljava/lang/String; = "weather_info"

.field public static final WEATHER_SERVICE_ATTENT_CITY_URI:Ljava/lang/String; = "content://com.oplusos.weather.service.provider.data/attent_city"

.field public static final WEATHER_SERVICE_URI:Ljava/lang/String; = "content://com.oplusos.weather.service.provider.data/weather_info"

.field public static final WEATHER_SERVICE_URI_NEW:Ljava/lang/String; = "content://com.oplusos.weather.service.provider.data/oplus_weather_info"

.field public static final WEATHER_URI_SUFFIX:Ljava/lang/String; = ".weather.provider.data/"

.field public static final WEATHER_URI_SUFFIX_NEW:Ljava/lang/String; = ".weather.service.provider.data/"


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;Ljava/lang/String;)V

    return-void
.end method

.method public static isQueryAttentCity(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".weather.provider.data/attent_city"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, ".weather.service.provider.data/attent_city"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isQueryWeatherInfo(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".weather.provider.data/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ".weather.service.provider.data/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    const-string v0, "weather_info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private resetUri(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetUri isCommonWeatherServiceExist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherContentProviderBinder"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->isQueryWeatherInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p1, :cond_25

    const-string p1, "content://com.oplusos.weather.service.provider.data/oplus_weather_info"

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    goto :goto_31

    :cond_25
    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->weatherServiceExists(Lcom/oplus/fancyicon/ScreenElementRoot;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "content://com.oplusos.weather.service.provider.data/weather_info"

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public cancelQuery()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    const-string v1, "WeatherContentProviderBinder"

    if-nez v0, :cond_c

    const-string p0, "cancelQuery mRoot is null!!!"

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_18

    const-string p0, "cancelQuery context is null!!!"

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-static {v0}, Lcom/oplus/fancyicon/util/WeatherServiceVersionUtils;->isCommonWeatherServiceExist(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->resetUri(Z)V

    const-string v0, "cancelQuery isCommonWeatherServiceExist is false"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->cancelQuery()V

    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const-string v0, "columns"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "load: "

    const-string v2, ", "

    invoke-static {v1, p2, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->isQueryAttentCity(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v1}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->weatherServiceExists(Lcom/oplus/fancyicon/ScreenElementRoot;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WeatherContentProviderBinder"

    invoke-static {v1, p2}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    invoke-static {p2}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->isQueryAttentCity(Ljava/lang/String;)Z

    move-result p2

    const-string v1, ","

    if-eqz p2, :cond_5b

    new-instance p2, Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v2, ""

    invoke-direct {p2, v2}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mWhereFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object p2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p2}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->weatherServiceExists(Lcom/oplus/fancyicon/ScreenElementRoot;)Z

    move-result p2

    if-eqz p2, :cond_51

    iget-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mWhereFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v2, "sort>-1"

    invoke-virtual {p2, v2}, Lcom/oplus/fancyicon/util/TextFormatter;->setText(Ljava/lang/String;)V

    :cond_51
    const-string p2, "sort ASC"

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mOrder:Ljava/lang/String;

    const-string p2, "location"

    invoke-static {v0, v1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5b
    iget-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    invoke-static {p2}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->isQueryWeatherInfo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_bf

    new-instance p2, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder$WeatherTextFormatter;

    const-string v2, "where"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "whereFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "whereParas"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "whereExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v2, v6}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v6

    const-string v2, "whereFormatExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, v2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder$WeatherTextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mWhereFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    const-string p1, "weather_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ab

    const-string p1, "day_weather_id"

    invoke-static {v0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "night_weather_id"

    invoke-static {p1, v1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_ab
    const-string p1, "current_weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bf

    const-string p1, "day_weather"

    invoke-static {v0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "night_weather"

    invoke-static {p1, v1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_bf
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c7

    const/4 p1, 0x0

    goto :goto_cb

    :cond_c7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_cb
    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    return-void
.end method

.method public queryData(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryData uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherContentProviderBinder"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-nez v0, :cond_20

    const-string p0, "queryData mRoot is null!!!"

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string p0, "queryData context is null!!!"

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-super/range {p0 .. p5}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->queryData(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateVariablesRow(Landroid/database/Cursor;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/fancyicon/data/binder/WeatherContentProviderBinder;->isQueryAttentCity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    :goto_c
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "location"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    goto :goto_2d

    :cond_29
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_c

    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;

    iput v0, p1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mRow:I

    goto :goto_33

    :cond_42
    return-void
.end method
