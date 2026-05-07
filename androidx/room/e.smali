.class public final synthetic Landroidx/room/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;
.implements Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Landroidx/room/e;

.field public static final synthetic c:Landroidx/room/e;

.field public static final synthetic d:Landroidx/room/e;

.field public static final synthetic e:Landroidx/room/e;

.field public static final synthetic f:Landroidx/room/e;

.field public static final synthetic g:Landroidx/room/e;

.field public static final synthetic h:Landroidx/room/e;

.field public static final synthetic i:Landroidx/room/e;

.field public static final synthetic j:Landroidx/room/e;

.field public static final synthetic k:Landroidx/room/e;

.field public static final synthetic l:Landroidx/room/e;

.field public static final synthetic m:Landroidx/room/e;

.field public static final synthetic n:Landroidx/room/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->b:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->c:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->d:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->e:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->f:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->g:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->h:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->i:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->j:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->k:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->l:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->m:Landroidx/room/e;

    new-instance v0, Landroidx/room/e;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/room/e;-><init>(I)V

    sput-object v0, Landroidx/room/e;->n:Landroidx/room/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/room/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/e;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_11

    :pswitch_6  #0x0
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isReadOnly()Z

    move-result p0

    :goto_c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_11
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely()Z

    move-result p0

    goto :goto_c

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public call(Ljava/lang/Object;FF)V
    .registers 4

    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public createActivityInterface(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->w(J)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Landroidx/room/e;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_10

    :pswitch_6  #0xb
    invoke-static {}, Lcom/oplus/statistics/agent/AppStartAgent;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0xa
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_10
    invoke-static {}, Lcom/oplus/statistics/strategy/WorkThread;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0xa
        :pswitch_b  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/e;->a:I

    sparse-switch p0, :sswitch_data_1e

    goto :goto_17

    :sswitch_6
    new-instance p0, Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;-><init>(Landroid/content/Context;)V

    return-object p0

    :sswitch_c
    new-instance p0, Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;-><init>(Landroid/content/Context;)V

    return-object p0

    :sswitch_12
    invoke-static {p1}, Lcom/android/launcher3/model/WellbeingModel;->f(Landroid/content/Context;)Lcom/android/launcher3/model/WellbeingModel;

    move-result-object p0

    return-object p0

    :goto_17
    new-instance p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-direct {p0, p1}, Lcom/android/quickstep/SystemUiProxy;-><init>(Landroid/content/Context;)V

    return-object p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_c
        0x7 -> :sswitch_6
    .end sparse-switch
.end method

.method public onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->c(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, [I

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method
