.class public final Lcom/android/launcher3/appedit/AppEditConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_SAVE_CHOOSE_ICON:Ljava/lang/String; = "com.oplus.uxdesign.action.SAVE_CHOOSE_ICON"

.field public static final INSTANCE:Lcom/android/launcher3/appedit/AppEditConfig;

.field public static final TABLE_CACHE_SIZE:I = 0x1f4

.field public static final TABLE_SELECT_COUNT_LIMIT:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "AppEdit"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/appedit/AppEditConfig;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppEditConfig;-><init>()V

    sput-object v0, Lcom/android/launcher3/appedit/AppEditConfig;->INSTANCE:Lcom/android/launcher3/appedit/AppEditConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isNotSupportOpen(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/appedit/AppEditConfig;->INSTANCE:Lcom/android/launcher3/appedit/AppEditConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isNotSupportOpen false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppEdit"

    const-string v2, "AppEditConfig"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppEditConfig;->isUxSupported()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final isUxSupported()Z
    .registers 7

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "android.app.UxIconPackageManagerExt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loadItemIconWithoutEdit"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageItemInfo;

    aput-object v3, v2, p0

    const-class v3, Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_27

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v4, p0

    :goto_22
    :try_start_22
    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    goto :goto_2d

    :catchall_25
    move-exception v0

    goto :goto_29

    :catchall_27
    move-exception v0

    move v4, p0

    :goto_29
    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2d
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "AppEdit"

    if-nez v0, :cond_37

    move p0, v4

    goto :goto_44

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "load class exception: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    const-string v0, "isNotSupportOpen "

    const-string v2, "AppEditConfig"

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
