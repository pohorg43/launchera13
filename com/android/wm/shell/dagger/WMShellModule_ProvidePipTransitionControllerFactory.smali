.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx2/a;


# instance fields
.field private final contextProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final pipAnimationControllerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipBoundsAlgorithmProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final pipBoundsStateProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;"
        }
    .end annotation
.end field

.field private final pipMenuControllerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipSurfaceTransactionHelperProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTransitionStateProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;"
        }
    .end annotation
.end field

.field private final shellTaskOrganizerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final splitScreenOptionalProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transitionsProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->contextProvider:Lx2/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->transitionsProvider:Lx2/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->shellTaskOrganizerProvider:Lx2/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipAnimationControllerProvider:Lx2/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipBoundsAlgorithmProvider:Lx2/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipBoundsStateProvider:Lx2/a;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipTransitionStateProvider:Lx2/a;

    iput-object p8, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipMenuControllerProvider:Lx2/a;

    iput-object p9, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipSurfaceTransactionHelperProvider:Lx2/a;

    iput-object p10, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->splitScreenOptionalProvider:Lx2/a;

    return-void
.end method

.method public static create(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;"
        }
    .end annotation

    new-instance v11, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;-><init>(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)V

    return-object v11
.end method

.method public static providePipTransitionController(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;)Lcom/android/wm/shell/pip/PipTransitionController;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)",
            "Lcom/android/wm/shell/pip/PipTransitionController;"
        }
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/android/wm/shell/dagger/WMShellModule;->providePipTransitionController(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;)Lcom/android/wm/shell/pip/PipTransitionController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipTransitionController;
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->contextProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->transitionsProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->shellTaskOrganizerProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipAnimationControllerProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipBoundsAlgorithmProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipBoundsStateProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipTransitionStateProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipMenuControllerProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->pipSurfaceTransactionHelperProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->splitScreenOptionalProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Ljava/util/Optional;

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->providePipTransitionController(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;)Lcom/android/wm/shell/pip/PipTransitionController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->get()Lcom/android/wm/shell/pip/PipTransitionController;

    move-result-object p0

    return-object p0
.end method
