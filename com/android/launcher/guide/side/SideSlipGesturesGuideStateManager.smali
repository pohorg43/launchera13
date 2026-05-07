.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final GESTURES_COMPLETED:I = 0x6

.field public static final GESTURES_NONE:I = 0x0

.field public static final LEFT_GESTURE:I = 0x1

.field public static final RIGHT_GESTURE:I = 0x2

.field public static final SWITCH_APP_GESTURE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SideSlipGesturesGuideStateManager"

.field public static final UP_HOME_GESTURE:I = 0x3

.field public static final UP_RECENTS_GESTURE:I = 0x4

.field private static volatile sInstance:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;


# instance fields
.field private mGesturesState:I

.field private mIsJustShowGuide:Z

.field private mLastGesturesState:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mGesturesState:I

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mLastGesturesState:I

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mIsJustShowGuide:Z

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->sInstance:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->sInstance:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    invoke-direct {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;-><init>()V

    sput-object v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->sInstance:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

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
    sget-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->sInstance:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentGesturesState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mGesturesState:I

    return p0
.end method

.method public getLastState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mLastGesturesState:I

    return p0
.end method

.method public isJustShowGuide()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mIsJustShowGuide:Z

    return p0
.end method

.method public isValidState(I)Z
    .registers 4

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mIsJustShowGuide:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_d

    if-lt p1, v1, :cond_c

    const/4 p0, 0x5

    if-gt p1, p0, :cond_c

    move v0, v1

    :cond_c
    return v0

    :cond_d
    if-ltz p1, :cond_13

    const/4 p0, 0x6

    if-gt p1, p0, :cond_13

    move v0, v1

    :cond_13
    return v0
.end method

.method public onMotionEventSuceess()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mGesturesState:I

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mLastGesturesState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mGesturesState:I

    return-void
.end method

.method public setIsJustShowGuide(Z)V
    .registers 4

    const-string/jumbo v0, "setIsJustShowGuide isJustShowGuide = "

    const-string v1, "SideSlipGesturesGuideStateManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mIsJustShowGuide:Z

    return-void
.end method

.method public setState(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mGesturesState:I

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mLastGesturesState:I

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->mGesturesState:I

    return-void
.end method
