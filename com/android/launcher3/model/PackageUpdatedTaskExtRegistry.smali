.class public final Lcom/android/launcher3/model/PackageUpdatedTaskExtRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/model/PackageUpdatedTaskExtRegistry;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTaskExtRegistry;

    invoke-direct {v0}, Lcom/android/launcher3/model/PackageUpdatedTaskExtRegistry;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/PackageUpdatedTaskExtRegistry;->INSTANCE:Lcom/android/launcher3/model/PackageUpdatedTaskExtRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerExt()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_d

    const-class v0, Lcom/android/launcher3/model/IPackageUpdatedTaskExt;

    const-class v1, Lcom/android/launcher3/model/PackageUpdatedTaskExtFoldScreenImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_d
    return-void
.end method

.method public static final registerObj()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_d

    const-class v0, Lcom/android/launcher3/model/IPackageUpdatedTaskExt;

    sget-object v1, Lcom/android/launcher3/k;->c:Lcom/android/launcher3/k;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    :cond_d
    return-void
.end method
