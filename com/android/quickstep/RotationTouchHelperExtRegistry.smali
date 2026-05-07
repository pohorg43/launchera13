.class public final Lcom/android/quickstep/RotationTouchHelperExtRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/RotationTouchHelperExtRegistry;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/RotationTouchHelperExtRegistry;

    invoke-direct {v0}, Lcom/android/quickstep/RotationTouchHelperExtRegistry;-><init>()V

    sput-object v0, Lcom/android/quickstep/RotationTouchHelperExtRegistry;->INSTANCE:Lcom/android/quickstep/RotationTouchHelperExtRegistry;

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

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_f

    const-class v0, Lcom/android/quickstep/IRotationTouchHelperExt;

    const-class v1, Lcom/android/quickstep/RotationTouchHelperExtFoldScreenImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_f
    return-void
.end method

.method public static final registerObj()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_f

    const-class v0, Lcom/android/quickstep/IRotationTouchHelperExt;

    sget-object v1, Lcom/android/launcher3/d;->e:Lcom/android/launcher3/d;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    :cond_f
    return-void
.end method
