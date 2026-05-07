.class public Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "OplusItemInfoMatcherInjector"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->lambda$injectOfPackages$0(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static injectOfPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->injectOfPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static injectOfPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/launcher3/util/d;-><init>(Landroid/os/UserHandle;Ljava/util/Set;ZI)V

    return-object v0
.end method

.method private static synthetic lambda$injectOfPackages$0(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 14

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e8

    instance-of v3, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_e8

    move-object v3, p3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v3}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_e8

    const-string/jumbo p2, "|"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10e

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    const/4 p3, -0x1

    if-eqz p2, :cond_54

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_54

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    const-string/jumbo v4, "userId1"

    invoke-virtual {p2, v4, p3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string/jumbo v4, "userId2"

    invoke-virtual {v3, v4, p3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    move v9, p3

    move p3, p2

    move p2, v9

    goto :goto_55

    :cond_54
    move p2, p3

    :goto_55
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e0

    aget-object v4, v3, v0

    aget-object v5, v3, v2

    if-eqz v4, :cond_d8

    if-nez v5, :cond_68

    goto :goto_d8

    :cond_68
    sget-object v1, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string v6, "packageNameArray.length"

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v3, v3

    const-string v7, ",userId1:"

    const-string v8, ",userId2:"

    invoke-static {v6, v3, v7, p3, v8}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, ",pkgName1:"

    const-string v7, ",pkgName2:"

    invoke-static {v6, p2, v3, v4, v7}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",user"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "user.getIdentifier():"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eq v3, p3, :cond_ca

    :cond_be
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p2, :cond_a6

    :cond_ca
    sget-object p0, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string p1, "mIsMatch = true packageName:"

    const-string p2, "pkgName1:"

    invoke-static {p1, v1, p2, v4, v7}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, v5, p0}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10b

    :cond_d8
    :goto_d8
    sget-object p0, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string p1, "pkg is invalid:(pkgName1 == null) || (pkgName2 == null)"

    invoke-static {p1, v1, p0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e0
    sget-object p0, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->TAG:Ljava/lang/String;

    const-string p1, "pkg is invalid:"

    invoke-static {p1, v1, p0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e8
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f8

    iget-object p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f8

    move p1, v2

    goto :goto_f9

    :cond_f8
    move p1, v0

    :goto_f9
    if-eqz p2, :cond_10d

    if-eqz p1, :cond_10e

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/OplusAppFilter;->shouldShowInLayout(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_10e

    :goto_10b
    move v0, v2

    goto :goto_10e

    :cond_10d
    move v0, p1

    :cond_10e
    :goto_10e
    return v0
.end method
