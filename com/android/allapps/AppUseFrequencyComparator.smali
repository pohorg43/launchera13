.class public Lcom/android/allapps/AppUseFrequencyComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/model/data/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLauncherPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/allapps/AppUseFrequencyComparator;->mLauncherPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I
    .registers 4

    iget-object v0, p0, Lcom/android/allapps/AppUseFrequencyComparator;->mLauncherPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->getClickTimes(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)I

    move-result v0

    iget-object p0, p0, Lcom/android/allapps/AppUseFrequencyComparator;->mLauncherPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p2}, Lcom/android/common/util/DrawAppSortManagerUtil;->getClickTimes(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_13

    return p0

    :cond_13
    sget-object p0, Lcom/android/common/sort/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compare(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/allapps/AppUseFrequencyComparator;->compare(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I

    move-result p0

    return p0
.end method
