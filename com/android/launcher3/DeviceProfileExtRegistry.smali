.class public final Lcom/android/launcher3/DeviceProfileExtRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/DeviceProfileExtRegistry;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/DeviceProfileExtRegistry;

    invoke-direct {v0}, Lcom/android/launcher3/DeviceProfileExtRegistry;-><init>()V

    sput-object v0, Lcom/android/launcher3/DeviceProfileExtRegistry;->INSTANCE:Lcom/android/launcher3/DeviceProfileExtRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerExt()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/android/launcher3/IDeviceProfileExt;

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_10

    const-class v1, Lcom/android/launcher3/DeviceProfileExtTabletImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_21

    :cond_10
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-class v1, Lcom/android/launcher3/DeviceProfileExtFoldScreenImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_21

    :cond_1c
    const-class v1, Lcom/android/launcher3/DeviceProfileExtOplusImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_21
    return-void
.end method

.method public static final registerObj()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/android/launcher3/IDeviceProfileExt;

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v1, Lcom/android/launcher3/l;->b:Lcom/android/launcher3/l;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_21

    :cond_10
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/android/launcher3/k;->b:Lcom/android/launcher3/k;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_21

    :cond_1c
    sget-object v1, Lcom/android/launcher3/b;->c:Lcom/android/launcher3/b;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    :goto_21
    return-void
.end method
