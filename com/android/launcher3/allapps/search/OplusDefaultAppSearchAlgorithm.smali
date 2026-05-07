.class public Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;
.super Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;
.source ""


# instance fields
.field public final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mSysAppAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    const-string v0, "DefaultAppSearchAlgorithm"

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->mSysAppAliasMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFuzzySearchResult(Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;I)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/common/sort/PinyinUtils;->getPinyin(Ljava/lang/String;)Lcom/android/common/sort/PinyinBean;

    move-result-object v7

    if-nez v7, :cond_7

    return-object p3

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->mSysAppAliasMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->mSysAppAliasMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object p2, v8

    :goto_1a
    const/4 v0, 0x0

    move v3, v0

    move v9, v3

    :goto_1d
    if-ge v9, p5, :cond_55

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p2, ""

    invoke-static {v3, p2, v5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(ILjava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object p2, v8

    goto :goto_52

    :cond_49
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->matchForNormal(Ljava/util/ArrayList;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;ILcom/android/common/sort/PinyinBean;Lcom/android/launcher3/model/data/AppInfo;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :goto_52
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_55
    const-string p0, "getTitleMatchResult: matchCompleted size = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "DefaultAppSearchAlgorithm"

    invoke-static {p3, p0, p1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p3
.end method

.method private initSysAppMap()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->mSysAppAliasMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_34

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->mSysAppAliasMap:Ljava/util/Map;

    aget-object v6, v4, v2

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_34
    return-void
.end method

.method private matchForNormal(Ljava/util/ArrayList;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;ILcom/android/common/sort/PinyinBean;Lcom/android/launcher3/model/data/AppInfo;Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;",
            "I",
            "Lcom/android/common/sort/PinyinBean;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    iget-object p0, p4, Lcom/android/common/sort/PinyinBean;->mOriginName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_b
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6f

    aget-char v5, p0, v2

    invoke-static {v5}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_30

    if-ltz v3, :cond_1d

    add-int/lit8 v7, v3, 0x1

    goto :goto_1e

    :cond_1d
    move v7, v1

    :goto_1e
    invoke-virtual {p6, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v0, :cond_6f

    if-ge v5, v3, :cond_27

    goto :goto_6f

    :cond_27
    array-length v3, p0

    sub-int/2addr v3, v6

    if-ne v2, v3, :cond_2c

    move v4, v6

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_b

    :cond_30
    iget-object p0, p4, Lcom/android/common/sort/PinyinBean;->mOriginName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/sort/PinyinUtils;->getPinyin(Ljava/lang/String;)Lcom/android/common/sort/PinyinBean;

    move-result-object p0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p6, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/common/sort/PinyinUtils;->getPinyin(Ljava/lang/String;)Lcom/android/common/sort/PinyinBean;

    move-result-object p4

    if-eqz p0, :cond_70

    if-nez p4, :cond_4b

    goto :goto_70

    :cond_4b
    iget-object p6, p4, Lcom/android/common/sort/PinyinBean;->mFirstPinyin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/common/sort/PinyinBean;->mFirstPinyin:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_70

    iget-object p6, p0, Lcom/android/common/sort/PinyinBean;->mWholePinyin:Ljava/lang/String;

    iget-object v0, p4, Lcom/android/common/sort/PinyinBean;->mWholePinyin:Ljava/lang/String;

    invoke-static {p6, v0, p2}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result p6

    if-nez p6, :cond_6d

    iget-object p0, p0, Lcom/android/common/sort/PinyinBean;->mWholePinyin:Ljava/lang/String;

    iget-object p4, p4, Lcom/android/common/sort/PinyinBean;->mFirstPinyin:Ljava/lang/String;

    invoke-static {p0, p4, p2}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result p0

    if-eqz p0, :cond_70

    :cond_6d
    move v1, v6

    goto :goto_70

    :cond_6f
    :goto_6f
    move v1, v4

    :cond_70
    :goto_70
    if-eqz v1, :cond_7d

    const-string p0, ""

    invoke-static {p3, p0, p5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(ILjava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    :cond_7d
    return p3
.end method


# virtual methods
.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->initSysAppMap()V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    return-void
.end method

.method public getTitleMatchResult(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_20

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;->getFuzzySearchResult(Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
