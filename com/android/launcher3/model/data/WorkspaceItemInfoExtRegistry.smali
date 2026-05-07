.class public final Lcom/android/launcher3/model/data/WorkspaceItemInfoExtRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/model/data/WorkspaceItemInfoExtRegistry;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtRegistry;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtRegistry;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtRegistry;->INSTANCE:Lcom/android/launcher3/model/data/WorkspaceItemInfoExtRegistry;

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

    const-class v0, Lcom/android/launcher3/model/data/IWorkspaceItemInfoExt;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_e

    const-class v1, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtFoldScreenImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_13

    :cond_e
    const-class v1, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_13
    return-void
.end method

.method public static final registerObj()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/android/launcher3/model/data/IWorkspaceItemInfoExt;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/launcher3/d;->c:Lcom/android/launcher3/d;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_13

    :cond_e
    sget-object v1, Lcom/android/launcher3/c;->d:Lcom/android/launcher3/c;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    :goto_13
    return-void
.end method
