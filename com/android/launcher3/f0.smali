.class public final synthetic Lcom/android/launcher3/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.implements Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;
.implements Lcom/oplus/smartsdk/SmartAPICallback;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/f0;

.field public static final synthetic c:Lcom/android/launcher3/f0;

.field public static final synthetic d:Lcom/android/launcher3/f0;

.field public static final synthetic e:Lcom/android/launcher3/f0;

.field public static final synthetic f:Lcom/android/launcher3/f0;

.field public static final synthetic g:Lcom/android/launcher3/f0;

.field public static final synthetic h:Lcom/android/launcher3/f0;

.field public static final synthetic i:Lcom/android/launcher3/f0;

.field public static final synthetic j:Lcom/android/launcher3/f0;

.field public static final synthetic k:Lcom/android/launcher3/f0;

.field public static final synthetic l:Lcom/android/launcher3/f0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->b:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->c:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->d:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->e:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->f:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->g:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->h:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->i:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->j:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->k:Lcom/android/launcher3/f0;

    new-instance v0, Lcom/android/launcher3/f0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/launcher3/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/f0;->l:Lcom/android/launcher3/f0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;FF)V
    .registers 4

    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/f0;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_10

    :pswitch_6  #0x9
    invoke-static {}, Lcom/oplus/statistics/agent/PageVisitAgent;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x8
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_10
    invoke-static {}, Lcom/oplus/statistics/util/ApkInfoUtil;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x8
        :pswitch_b  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/f0;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    new-instance p0, Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;)V

    return-object p0

    :goto_c
    invoke-static {p1}, Lcom/android/launcher3/pm/UserCache;->a(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method

.method public onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->a(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/card/helper/SmartEngineHelper;->a(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget p0, p0, Lcom/android/launcher3/f0;->a:I

    packed-switch p0, :pswitch_data_10

    :pswitch_5  #0x2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_5  #00000002
    .end packed-switch
.end method
