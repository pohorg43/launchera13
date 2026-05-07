.class public Lcom/android/allapps/AppInfoInstallTimeComparator;
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
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/allapps/AppInfoInstallTimeComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I
    .registers 7

    iget-object v0, p0, Lcom/android/allapps/AppInfoInstallTimeComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->getFirstInstallTime(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/allapps/AppInfoInstallTimeComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0, p2}, Lcom/android/common/util/DrawAppSortManagerUtil;->getFirstInstallTime(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

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

    invoke-virtual {p0, p1, p2}, Lcom/android/allapps/AppInfoInstallTimeComparator;->compare(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I

    move-result p0

    return p0
.end method
