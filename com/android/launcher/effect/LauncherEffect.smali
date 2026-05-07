.class public Lcom/android/launcher/effect/LauncherEffect;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG_ENABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherEffect"

.field private static final TAG_EFFECT:Ljava/lang/String; = "effect"

.field private static final TAG_EFFECTS:Ljava/lang/String; = "effcets"

.field private static sLauncherEffect:Lcom/android/launcher/effect/LauncherEffect;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/effect/LauncherEffect;->mEffectItemList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/effect/LauncherEffect;->mEffectItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/effect/LauncherEffect;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/effect/LauncherEffect;->mEffectItemList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/android/launcher/effect/LauncherEffect;->parserEffects(Landroid/content/Context;Ljava/util/ArrayList;)I

    return-void
.end method

.method public static clear()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/effect/LauncherEffect;->sLauncherEffect:Lcom/android/launcher/effect/LauncherEffect;

    return-void
.end method

.method public static getLauncherEffect(Landroid/content/Context;)Lcom/android/launcher/effect/LauncherEffect;
    .registers 2

    sget-object v0, Lcom/android/launcher/effect/LauncherEffect;->sLauncherEffect:Lcom/android/launcher/effect/LauncherEffect;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/effect/LauncherEffect;

    invoke-direct {v0, p0}, Lcom/android/launcher/effect/LauncherEffect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher/effect/LauncherEffect;->sLauncherEffect:Lcom/android/launcher/effect/LauncherEffect;

    :cond_b
    sget-object p0, Lcom/android/launcher/effect/LauncherEffect;->sLauncherEffect:Lcom/android/launcher/effect/LauncherEffect;

    return-object p0
.end method

.method public static parserEffects(Landroid/content/Context;ILjava/util/List;)I
    .registers 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const-string v2, "effcets"

    invoke-static {p1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_70

    move v2, v0

    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_79

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v3, v6, :cond_13

    sget-object v3, Lcom/android/launcher3/R$styleable;->TogPreview:[I

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const-string v7, "effect"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v5, -0x1

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    new-instance v8, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    invoke-direct {v8}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;-><init>()V

    invoke-virtual {v8, v6}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->setTitleResId(I)V

    invoke-virtual {v8, v5}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->setThumbnailResId(I)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->setClassName(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->getWpEffectClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-virtual {v8, v4}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->setSelected(Z)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :cond_66
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_6c} :catch_6d

    goto :goto_13

    :catch_6d
    move-exception p0

    move v0, v2

    goto :goto_71

    :catch_70
    move-exception p0

    :goto_71
    const-string p1, "Got IOException parsing  parserEffects favorites. e:"

    const-string p2, "LauncherEffect"

    invoke-static {p1, p0, p2}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v2, v0

    :cond_79
    return v2
.end method

.method public static parserEffects(Landroid/content/Context;Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLauncherSpecialEffect()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f15002c

    invoke-static {p0, v0, p1}, Lcom/android/launcher/effect/LauncherEffect;->parserEffects(Landroid/content/Context;ILjava/util/List;)I

    move-result p0

    return p0

    :cond_10
    const v0, 0x7f15002b

    invoke-static {p0, v0, p1}, Lcom/android/launcher/effect/LauncherEffect;->parserEffects(Landroid/content/Context;ILjava/util/List;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getEffectItemList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/effect/LauncherEffect;->mEffectItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isEffectAvailable(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/effect/LauncherEffect;->mEffectItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    move v0, v1

    :goto_8
    iget-object v2, p0, Lcom/android/launcher/effect/LauncherEffect;->mEffectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    iget-object v2, p0, Lcom/android/launcher/effect/LauncherEffect;->mEffectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    goto :goto_27

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_27
    :goto_27
    return v1
.end method
