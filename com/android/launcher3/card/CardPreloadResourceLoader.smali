.class public final Lcom/android/launcher3/card/CardPreloadResourceLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/CardPreloadResourceLoader$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_CARD_PROVIDER:Ljava/lang/String; = "android.appcard.action.APPCARD_UPDATE"

.field public static final ATTR_DESC:Ljava/lang/String; = "desc"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PREFIX:Ljava/lang/String; = "oplus_card_"

.field public static final ATTR_PRELOAD_IMAGE:Ljava/lang/String; = "launcherPreloadImage"

.field public static final ATTR_PREVIEW_IMAGE:Ljava/lang/String; = "previewImage"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final Companion:Lcom/android/launcher3/card/CardPreloadResourceLoader$Companion;

.field public static final KEY_CARD_PROVIDER:Ljava/lang/String; = "android.card.provider"

.field public static final KEY_CARD_PROVIDER_ARRAY:Ljava/lang/String; = "android.card.provider.array"

.field public static final NODE_CARD_PROVIDER:Ljava/lang/String; = "card-provider"

.field public static final SPECIAL_SYMBOL:Ljava/lang/String; = "@"

.field public static final TAG:Ljava/lang/String; = "LauncherCard-CardPreloadResourceLoader"


# instance fields
.field private final context:Landroid/content/Context;

.field private final packageManager$delegate:Ly2/e;

.field private final padding$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/CardPreloadResourceLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/CardPreloadResourceLoader;->Companion:Lcom/android/launcher3/card/CardPreloadResourceLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher3/card/CardPreloadResourceLoader$packageManager$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader$packageManager$2;-><init>(Lcom/android/launcher3/card/CardPreloadResourceLoader;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader;->packageManager$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CardPreloadResourceLoader$padding$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader$padding$2;-><init>(Lcom/android/launcher3/card/CardPreloadResourceLoader;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader;->padding$delegate:Ly2/e;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/launcher3/card/CardPreloadResourceLoader;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMetaKeys(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/pm/ProviderInfo;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->getMetaKeys(Landroid/content/pm/ProviderInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPackageManager(Lcom/android/launcher3/card/CardPreloadResourceLoader;)Landroid/content/pm/PackageManager;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->getPadding()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$parseCardProvider(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ly2/m;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->parseCardProvider(Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ly2/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryCardProviders(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/Intent;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->queryCardProviders(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getMetaKeys(Landroid/content/pm/ProviderInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ProviderInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    const-string v2, "android.card.provider.array"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_32

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "packageManager.getResour…etStringArray(resourceId)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    array-length v1, p0

    :goto_28
    if-ge p1, v1, :cond_37

    aget-object v2, p0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_32
    const-string p0, "android.card.provider"

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_37
    return-object v0
.end method

.method private final getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader;->packageManager$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private final getPadding()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader;->padding$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final parseCardProvider(Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ly2/m;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ProviderInfo;",
            "Ljava/lang/String;",
            ")",
            "Ly2/m<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return-object p1

    :cond_c
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2

    :goto_10
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1b

    if-eq p2, v0, :cond_1b

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2

    goto :goto_10

    :cond_1b
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "card-provider"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    return-object p1

    :cond_28
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p0

    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result p1

    const/4 p2, -0x1

    if-lez p1, :cond_110

    const/4 v1, 0x0

    move v2, p2

    move v3, v2

    move v4, v3

    move v5, v1

    :goto_38
    add-int/lit8 v6, v5, 0x1

    invoke-interface {p0, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "attrName"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "oplus_card_"

    invoke-static {v7, v10, v1, v0}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    const-string/jumbo v11, "this as java.lang.String).substring(startIndex)"

    if-eqz v10, :cond_5f

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5f
    if-eqz v7, :cond_10a

    :try_start_61
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_65} :catch_e2

    const-string v10, "@"

    const-string v12, "attributeValue"

    sparse-switch v9, :sswitch_data_12a

    goto/16 :goto_10a

    :sswitch_6e
    :try_start_6e
    const-string/jumbo v9, "type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_79

    goto/16 :goto_10a

    :cond_79
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_10a

    :sswitch_82
    const-string/jumbo v9, "name"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    goto/16 :goto_10a

    :cond_8d
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10, v1, v0}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-eqz v9, :cond_10a

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_10a

    :sswitch_a3
    const-string/jumbo v9, "previewImage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ad

    goto :goto_10a

    :cond_ad
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10, v1, v0}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-eqz v9, :cond_10a

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_10a

    :sswitch_c3
    const-string v9, "launcherPreloadImage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cc

    goto :goto_10a

    :cond_cc
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10, v1, v0}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-eqz v9, :cond_10a

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_e1
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_e1} :catch_e2

    goto :goto_10a

    :catch_e2
    move-exception v8

    const-string/jumbo v9, "parseCardProvider: e = "

    invoke-static {v9}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", index = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", name = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "LauncherCard-CardPreloadResourceLoader"

    invoke-static {v7, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10a
    :goto_10a
    if-lt v6, p1, :cond_10d

    goto :goto_113

    :cond_10d
    move v5, v6

    goto/16 :goto_38

    :cond_110
    move v2, p2

    move v3, v2

    move v4, v3

    :goto_113
    new-instance p0, Ly2/m;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-lez v2, :cond_11c

    goto :goto_11d

    :cond_11c
    move v2, v3

    :goto_11d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ly2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    nop

    :sswitch_data_12a
    .sparse-switch
        -0x632c636e -> :sswitch_c3
        -0x52720d8d -> :sswitch_a3
        0x337a8b -> :sswitch_82
        0x368f3a -> :sswitch_6e
    .end sparse-switch
.end method

.method private final queryCardProviders(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v0, 0x80

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string/jumbo p1, "packageManager.queryInte…_DATA.toLong())\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_1a

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v1, :cond_37

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4c
    return-object p0
.end method


# virtual methods
.method public final loadAsync(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lq3/i1;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lq3/i1;"
        }
    .end annotation

    const-string v0, "launcher"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v4, "UI_HELPER_EXECUTOR"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lq3/b1;

    invoke-direct {v9, v1}, Lq3/b1;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v10, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v4, p5

    move-object v5, p0

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Ljava/util/function/Consumer;Lcom/android/launcher3/card/CardPreloadResourceLoader;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lb3/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object p0, v0

    move-object p1, v9

    move p2, v1

    move-object p3, v10

    move p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    move-result-object v0

    return-object v0
.end method
