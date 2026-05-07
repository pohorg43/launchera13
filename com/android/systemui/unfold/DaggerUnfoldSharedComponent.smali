.class public final Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldSharedComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;
    }
.end annotation


# instance fields
.field private aTraceLoggerTransitionProgressListenerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private activityManagerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundExecutorProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private configProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private contentResolverProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private contextProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private deviceFoldStateProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private deviceStateManagerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private executorProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private factoryProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private handlerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private hingeAngleProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideFoldStateProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private scaleAwareTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

.field private screenStatusProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;"
        }
    .end annotation
.end field

.field private sensorManagerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private tracingTagPrefixProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unfoldSharedComponent:Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;

.field private unfoldTransitionProgressProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->unfoldSharedComponent:Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->initialize(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;-><init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static factory()Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;
    .registers 2

    new-instance v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;-><init>(Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 15

    new-instance v0, Lw2/b;

    const-string v1, "instance cannot be null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p3}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->configProvider:Lx2/a;

    new-instance p3, Lw2/b;

    invoke-static {p12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p3, p12}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->contentResolverProvider:Lx2/a;

    invoke-static {p3}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;->create(Lx2/a;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->scaleAwareTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    invoke-static {p3}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory_Impl;->create(Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;)Lx2/a;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->factoryProvider:Lx2/a;

    new-instance p3, Lw2/b;

    invoke-static {p11, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p3, p11}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->tracingTagPrefixProvider:Lx2/a;

    invoke-static {p3}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->create(Lx2/a;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->aTraceLoggerTransitionProgressListenerProvider:Lx2/a;

    new-instance p3, Lw2/b;

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p3, p2}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->contextProvider:Lx2/a;

    new-instance p2, Lw2/b;

    invoke-static {p7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p2, p7}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->sensorManagerProvider:Lx2/a;

    new-instance p2, Lw2/b;

    invoke-static {p10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p2, p10}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->backgroundExecutorProvider:Lx2/a;

    iget-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->configProvider:Lx2/a;

    iget-object p7, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->sensorManagerProvider:Lx2/a;

    invoke-static {p1, p3, p7, p2}, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->create(Lcom/android/systemui/unfold/UnfoldSharedModule;Lx2/a;Lx2/a;Lx2/a;)Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->hingeAngleProvider:Lx2/a;

    new-instance p2, Lw2/b;

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p2, p4}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->screenStatusProvider:Lx2/a;

    new-instance p2, Lw2/b;

    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p2, p5}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->deviceStateManagerProvider:Lx2/a;

    new-instance p2, Lw2/b;

    invoke-static {p6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p2, p6}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->activityManagerProvider:Lx2/a;

    new-instance p2, Lw2/b;

    invoke-static {p9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p2, p9}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->executorProvider:Lx2/a;

    new-instance p9, Lw2/b;

    invoke-static {p8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p9, p8}, Lw2/b;-><init>(Ljava/lang/Object;)V

    iput-object p9, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->handlerProvider:Lx2/a;

    iget-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->contextProvider:Lx2/a;

    iget-object p4, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->hingeAngleProvider:Lx2/a;

    iget-object p5, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->screenStatusProvider:Lx2/a;

    iget-object p6, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->deviceStateManagerProvider:Lx2/a;

    iget-object p7, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->activityManagerProvider:Lx2/a;

    iget-object p8, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->executorProvider:Lx2/a;

    invoke-static/range {p3 .. p9}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->create(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->deviceFoldStateProvider:Lx2/a;

    invoke-static {p1, p2}, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->create(Lcom/android/systemui/unfold/UnfoldSharedModule;Lx2/a;)Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;

    move-result-object p2

    sget-object p3, Lw2/a;->c:Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p3, p2, Lw2/a;

    if-eqz p3, :cond_ac

    goto :goto_b2

    :cond_ac
    new-instance p3, Lw2/a;

    invoke-direct {p3, p2}, Lw2/a;-><init>(Lx2/a;)V

    move-object p2, p3

    :goto_b2
    iput-object p2, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->provideFoldStateProvider:Lx2/a;

    iget-object p3, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->configProvider:Lx2/a;

    iget-object p4, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->factoryProvider:Lx2/a;

    iget-object p5, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->aTraceLoggerTransitionProgressListenerProvider:Lx2/a;

    invoke-static {p1, p3, p4, p5, p2}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->create(Lcom/android/systemui/unfold/UnfoldSharedModule;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p2, p1, Lw2/a;

    if-eqz p2, :cond_c6

    goto :goto_cc

    :cond_c6
    new-instance p2, Lw2/a;

    invoke-direct {p2, p1}, Lw2/a;-><init>(Lx2/a;)V

    move-object p1, p2

    :goto_cc
    iput-object p1, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->unfoldTransitionProgressProvider:Lx2/a;

    return-void
.end method


# virtual methods
.method public getUnfoldTransitionProvider()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->unfoldTransitionProgressProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method
