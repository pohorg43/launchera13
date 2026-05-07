.class Lcom/oplus/uxicon/ui/util/UxIconPackLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UxIconPackLoader"

.field private static sIconPackCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;


# instance fields
.field private mCurrentIconPackName:Ljava/lang/String;

.field private mIconPackUtil:Lcom/oplus/uxicon/ui/util/c;

.field private mNeedUpdateIconMap:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mNeedUpdateIconMap:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mCurrentIconPackName:Ljava/lang/String;

    return-void
.end method

.method private checkIconPack(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mCurrentIconPackName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mCurrentIconPackName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mNeedUpdateIconMap:Z

    :cond_10
    invoke-static {}, Lcom/oplus/uxicon/ui/util/h;->a()V

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mNeedUpdateIconMap:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mIconPackUtil:Lcom/oplus/uxicon/ui/util/c;

    if-nez v0, :cond_39

    :cond_1b
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    new-instance v0, Lcom/oplus/uxicon/ui/util/c;

    invoke-direct {v0, p1, p2}, Lcom/oplus/uxicon/ui/util/c;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mIconPackUtil:Lcom/oplus/uxicon/ui/util/c;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/c;->b()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mNeedUpdateIconMap:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception p0

    const-string p1, "generateIconPackDrawable:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "UxIconPackLoader"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public static getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;
    .registers 2

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->sInstance:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->sInstance:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-direct {v1}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;-><init>()V

    sput-object v1, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->sInstance:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->sInstance:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    return-object v0
.end method


# virtual methods
.method public applyIconPack(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
    .registers 4

    :try_start_0
    const-class p0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/k;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    iget-object p0, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iput-object p2, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UxIconPackLoader"

    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-object p1
.end method

.method public generateIconPackDrawable(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p3  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->checkIconPack(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mIconPackUtil:Lcom/oplus/uxicon/ui/util/c;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p5, p3}, Lcom/oplus/uxicon/ui/util/c;->a(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_10
    return-object p3
.end method

.method public getAppPackageManager(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/PackageManager;
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "mPm"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const-string p1, "get app package manager error: "

    const-string v0, "UxIconPackLoader"

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconPackAllIcons(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-string p0, "UxIconPackLoader"

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return-object v0

    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_f
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    if-nez p4, :cond_19

    invoke-static {p1, p2}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconPackItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    :cond_19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconPackAllIcons setData startPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xf0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_4a

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_4a
    add-int/lit8 v4, p3, 0x1c

    if-gt v4, v3, :cond_53

    invoke-virtual {p4, p3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_5b

    :cond_53
    if-ge p3, v3, :cond_5b

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p4, p3, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_5b
    :goto_5b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_87

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_65
    :goto_65
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_87

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/uxicon/ui/util/c$a;

    iget v3, p4, Lcom/oplus/uxicon/ui/util/c$a;->b:I

    if-gez v3, :cond_7d

    iget-object v3, p4, Lcom/oplus/uxicon/ui/util/c$a;->a:Ljava/lang/String;

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_7d
    if-lez v3, :cond_65

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, p4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_87
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getAllIconPackDrawable --- "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " useList: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_b3} :catch_ca
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_b3} :catch_b4

    goto :goto_e7

    :catch_b4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Resources NameNotFoundException --- "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    :catch_ca
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PackageManager NameNotFoundException --- "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " name: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e7
    return-object v1
.end method

.method public getIconPackItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_8
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lcom/oplus/uxicon/ui/util/c;

    invoke-direct {v0, p2, p1}, Lcom/oplus/uxicon/ui/util/c;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/c;->b()V

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/c;->a()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object p0
.end method

.method public getIconPackList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0, p1}, Landroid/content/pm/OplusPackageManager;-><init>(Landroid/content/Context;)V

    const-string p1, "android.content.pm.OplusPackageManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getIconPackList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeIconPackFragment"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-class p0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/k;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    iget-object p0, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget-object p0, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UxIconPackLoader"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public getIconWithoutEdit(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 12

    if-eqz p3, :cond_58

    :try_start_2
    const-string p0, "android.app.UxIconPackageManagerExt"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p3, 0x3

    new-array v0, p3, [Ljava/lang/Class;

    const-class v1, Landroid/content/pm/PackageItemInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "loadItemIconWithoutEdit"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/pm/PackageManager;

    aput-object v6, v5, v2

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object p4, v5, v3

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, p3, v4

    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_59

    :catch_50
    move-exception p0

    const-string p1, "getIconWithoutEdit occur error: "

    const-string p2, "UxIconPackLoader"

    invoke-static {p1, p0, p2}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_58
    const/4 p0, 0x0

    :goto_59
    return-object p0
.end method

.method public getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-static {p2, p3}, Lcom/oplus/uxicon/ui/util/f;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-nez p0, :cond_16

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/oplus/uxicon/ui/util/f;->a(Ljava/lang/String;ILandroid/graphics/drawable/Drawable$ConstantState;)V

    return-object p0

    :cond_16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public loadDrawableFromIconPack(Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->checkIconPack(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mIconPackUtil:Lcom/oplus/uxicon/ui/util/c;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p3}, Lcom/oplus/uxicon/ui/util/c;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadDrawableFromIconPack(Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 14

    const-string v0, "UxIconPackLoader"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b3

    if-eqz p3, :cond_b3

    if-eqz p4, :cond_b3

    if-nez p2, :cond_11

    goto/16 :goto_b3

    :cond_11
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, p4}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getAppPackageManager(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_1e
    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_3d

    :catch_27
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get activity info error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    :goto_3d
    if-eqz v6, :cond_b3

    if-nez v3, :cond_43

    goto/16 :goto_b3

    :cond_43
    :try_start_43
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->checkIconPack(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mIconPackUtil:Lcom/oplus/uxicon/ui/util/c;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/uxicon/ui/util/c;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-static {p2, v2, p3}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->handleIconFromPack(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    goto :goto_9f

    :cond_5b
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object p1

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    invoke-virtual {p1, v3, v7, v1, v4}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->mIconPackUtil:Lcom/oplus/uxicon/ui/util/c;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/uxicon/ui/util/c;->a(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_71} :catch_95

    if-eq p0, p1, :cond_78

    :try_start_73
    invoke-static {p2, p0, p3}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->handleIconFromPack(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    goto :goto_9f

    :cond_78
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v1, v2, :cond_9f

    invoke-static {v7, p3}, Lcom/oplus/uxicon/ui/util/e;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-static {p2, p1, p3, v5}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->handleIconForDefaultRadius(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    goto :goto_9f

    :cond_8d
    const/4 v1, 0x1

    invoke-static {p2, p1, p3, v1}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->handleIconForDefaultRadius(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_92} :catch_93

    goto :goto_9f

    :catch_93
    move-exception p1

    goto :goto_98

    :catch_95
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    :goto_98
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9f
    :goto_9f
    if-eqz p0, :cond_aa

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_aa
    invoke-static {}, Lcom/oplus/uxicon/ui/util/g;->a()Lcom/oplus/uxicon/ui/util/g;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_b3
    :goto_b3
    return-object v2
.end method
