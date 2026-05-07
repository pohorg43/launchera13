.class public Lcom/oplus/physicsengine/engine/PhysicalAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;


# static fields
.field public static final PROPERTY_TYPE_ALPHA:I = 0x4

.field public static final PROPERTY_TYPE_CUSTOM:I = 0x0

.field public static final PROPERTY_TYPE_POSITION:I = 0x1

.field public static final PROPERTY_TYPE_ROTATION:I = 0x3

.field public static final PROPERTY_TYPE_SCALE:I = 0x2

.field private static final RELEASE:Ljava/lang/String; = "release"

.field private static final TAG:Ljava/lang/String; = "PhysicalAnimator"


# instance fields
.field private final mAllBehaviors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            "Lcom/oplus/physicsengine/engine/AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChoreographer:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentRunningBehaviors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mGround:Lcom/oplus/physicsengine/dynamics/Body;

.field private mIsAnimatorRunning:Z

.field private mIsCancel:Z

.field private mIsSteady:Z

.field private mUpdateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            "Lcom/oplus/physicsengine/engine/AnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWorld:Lcom/oplus/physicsengine/dynamics/World;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsSteady:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsAnimatorRunning:Z

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsCancel:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mChoreographer:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->init()V

    return-void
.end method

.method private buildBodyProperty(Lcom/oplus/physicsengine/engine/UIItem;I)Lcom/oplus/physicsengine/dynamics/Body;
    .registers 13

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildBodyProperty item =:,propertyType =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mWorld:Lcom/oplus/physicsengine/dynamics/World;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/World;->getVectorTemp()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget-object v1, p1, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-static {v1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v1

    iget-object v2, p1, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-static {v2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    move-result-object v4

    const/4 v5, 0x1

    iget v0, p1, Lcom/oplus/physicsengine/engine/UIItem;->mWidth:F

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v7

    iget p1, p1, Lcom/oplus/physicsengine/engine/UIItem;->mHeight:F

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v8

    invoke-static {p2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->descriptionOfPropertyType(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    move v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->createBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    iget-object p1, p0, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/common/Vector;->setZero()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/dynamics/Body;->setAwake(Z)V

    return-object p0
.end method

.method private clearBehaviors()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/BaseBehavior;

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    move-result v1

    if-eqz v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private clearBodies()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/BaseBehavior;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)Z

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method private clearListeners()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mUpdateListeners:Ljava/util/HashMap;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_e
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/oplus/physicsengine/engine/PhysicalAnimator;
    .registers 2

    new-instance v0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-direct {v0, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private createWorld()V
    .registers 9

    new-instance v0, Lcom/oplus/physicsengine/dynamics/World;

    invoke-direct {v0}, Lcom/oplus/physicsengine/dynamics/World;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mWorld:Lcom/oplus/physicsengine/dynamics/World;

    new-instance v2, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v2}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Ground"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->createBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mGround:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWorld : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private static descriptionOfPropertyType(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const-string p0, "custom"

    goto :goto_1a

    :cond_f
    const-string p0, "alpha"

    goto :goto_1a

    :cond_12
    const-string p0, "rotation"

    goto :goto_1a

    :cond_15
    const-string p0, "scale"

    goto :goto_1a

    :cond_18
    const-string p0, "position"

    :goto_1a
    return-object p0
.end method

.method private init()V
    .registers 2

    new-instance v0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    invoke-direct {v0}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mChoreographer:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->setFrameCallback(Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;)V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->initConfig()V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->createWorld()V

    return-void
.end method

.method private initConfig()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Compat;->updatePhysicalSizeToPixelsRatio(F)V

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_29

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    div-float/2addr v0, p0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Compat;->updateRefreshRate(F)V

    :cond_29
    return-void
.end method

.method private onAnimationCancel(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/physicsengine/engine/AnimationListener;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Lcom/oplus/physicsengine/engine/AnimationListener;->onAnimationCancel(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    :cond_10
    return-void
.end method

.method private onAnimationEnd(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/physicsengine/engine/AnimationListener;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Lcom/oplus/physicsengine/engine/AnimationListener;->onAnimationEnd(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    :cond_10
    return-void
.end method

.method private onAnimationStart(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/physicsengine/engine/AnimationListener;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Lcom/oplus/physicsengine/engine/AnimationListener;->onAnimationStart(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    :cond_10
    return-void
.end method

.method private onAnimationUpdate(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mUpdateListeners:Ljava/util/HashMap;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/physicsengine/engine/AnimationUpdateListener;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Lcom/oplus/physicsengine/engine/AnimationUpdateListener;->onAnimationUpdate(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    :cond_10
    return-void
.end method

.method private pause()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsAnimatorRunning:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mChoreographer:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->unScheduleNextFrame()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsAnimatorRunning:Z

    return-void
.end method

.method private resume()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsAnimatorRunning:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mChoreographer:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->scheduleNextFrame()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsAnimatorRunning:Z

    return-void
.end method

.method public static final scaleX()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 3

    new-instance v0, Lcom/oplus/physicsengine/engine/PhysicalAnimator$3;

    const-string v1, "scaleX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$3;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final scaleY()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 3

    new-instance v0, Lcom/oplus/physicsengine/engine/PhysicalAnimator$4;

    const-string v1, "scaleY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$4;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final scrollX()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 3

    new-instance v0, Lcom/oplus/physicsengine/engine/PhysicalAnimator$5;

    const-string v1, "scrollX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$5;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final scrollY()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 3

    new-instance v0, Lcom/oplus/physicsengine/engine/PhysicalAnimator$6;

    const-string v1, "scrollY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$6;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private stepWorld()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mWorld:Lcom/oplus/physicsengine/dynamics/World;

    sget v1, Lcom/oplus/physicsengine/common/Compat;->sRefreshRate:F

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/World;->step(F)V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->syncMoverChanging()V

    return-void
.end method

.method private syncMoverChanging()V
    .registers 6

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->debugFrame()Z

    move-result v0

    const-string v1, "PhysicsWorld-Frame"

    if-eqz v0, :cond_1e

    const-string v0, "syncMoverChanging start ===========> mCurrentRunningBehaviors =:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/physicsengine/engine/BaseBehavior;

    if-nez v2, :cond_33

    goto :goto_24

    :cond_33
    invoke-virtual {v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->dispatchChanging()V

    invoke-virtual {p0, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->updateValue(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    invoke-direct {p0, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->onAnimationUpdate(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->debugFrame()Z

    move-result v3

    if-eqz v3, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBehavior : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    invoke-virtual {v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->isSteady()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->stopBehavior()Z

    goto :goto_24

    :cond_60
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsSteady:Z

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->debugFrame()Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "syncMoverChanging end ===========> mCurrentRunningBehaviors =:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsSteady:Z

    if-eqz v0, :cond_8c

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->pause()V

    goto :goto_91

    :cond_8c
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mChoreographer:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->scheduleNextFrame()V

    :goto_91
    return-void
.end method

.method public static final x()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 3

    new-instance v0, Lcom/oplus/physicsengine/engine/PhysicalAnimator$1;

    const-string v1, "x"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$1;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final y()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 3

    new-instance v0, Lcom/oplus/physicsengine/engine/PhysicalAnimator$2;

    const-string v1, "y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$2;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public varargs addAnimationListener(Lcom/oplus/physicsengine/engine/AnimationListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public addAnimationListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationListener;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    :cond_c
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/AnimationUpdateListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationUpdateListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationUpdateListener;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mUpdateListeners:Ljava/util/HashMap;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mUpdateListeners:Ljava/util/HashMap;

    :cond_c
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->bindAnimator(Lcom/oplus/physicsengine/engine/PhysicalAnimator;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/BaseBehavior;

    if-eqz v1, :cond_32

    iget-object v2, v1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mTarget:Ljava/lang/Object;

    if-eqz v2, :cond_32

    iget-object v3, p1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mTarget:Ljava/lang/Object;

    if-eqz v3, :cond_32

    if-ne v2, v3, :cond_32

    invoke-virtual {v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getType()I

    move-result v3

    if-ne v2, v3, :cond_32

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    move-result v1

    if-eqz v1, :cond_32

    add-int/lit8 v0, v0, -0x1

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_35
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBehavior behavior =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mAllBehaviors.size =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_62
    return-object p1
.end method

.method public varargs addBehavior([Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsCancel:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel with reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p1, v0, :cond_38

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/physicsengine/engine/BaseBehavior;

    if-eqz v0, :cond_35

    invoke-direct {p0, v0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->onAnimationCancel(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    :cond_35
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_38
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->pause()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsCancel:Z

    return-void
.end method

.method public createBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;
    .registers 14

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mWorld:Lcom/oplus/physicsengine/dynamics/World;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/physicsengine/dynamics/World;->createBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    return-object p0
.end method

.method public createSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Lcom/oplus/physicsengine/dynamics/spring/Spring;
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mWorld:Lcom/oplus/physicsengine/dynamics/World;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/dynamics/World;->createSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Lcom/oplus/physicsengine/dynamics/spring/Spring;

    move-result-object p0

    return-object p0
.end method

.method public destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mWorld:Lcom/oplus/physicsengine/dynamics/World;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/dynamics/World;->destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)V

    const/4 p0, 0x1

    return p0
.end method

.method public destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mWorld:Lcom/oplus/physicsengine/dynamics/World;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/dynamics/World;->destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)V

    const/4 p0, 0x1

    return p0
.end method

.method public doFrame(J)V
    .registers 3

    iget-boolean p1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsCancel:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->stepWorld()V

    return-void
.end method

.method public getGround()Lcom/oplus/physicsengine/dynamics/Body;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mGround:Lcom/oplus/physicsengine/dynamics/Body;

    return-object p0
.end method

.method public getOrCreatePropertyBody(Lcom/oplus/physicsengine/engine/UIItem;I)Lcom/oplus/physicsengine/dynamics/Body;
    .registers 6

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v2, v1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    if-ne v2, p1, :cond_6

    iget-object v2, v1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getProperty()I

    move-result v2

    if-ne v2, p2, :cond_6

    iget-object p0, v1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    return-object p0

    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->buildBodyProperty(Lcom/oplus/physicsengine/engine/UIItem;I)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateUIItem(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/UIItem;
    .registers 4

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v0, Lcom/oplus/physicsengine/engine/UIItem;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_1d
    instance-of p0, p1, Landroid/view/View;

    if-eqz p0, :cond_4e

    move-object p0, p1

    check-cast p0, Landroid/view/View;

    new-instance v0, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-direct {v0, p1}, Lcom/oplus/physicsengine/engine/UIItem;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/physicsengine/engine/UIItem;->setSize(FF)Lcom/oplus/physicsengine/engine/UIItem;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/physicsengine/engine/UIItem;->setStartPosition(FF)Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/physicsengine/engine/UIItem;->setStartScale(FF)Lcom/oplus/physicsengine/engine/UIItem;

    return-object p1

    :cond_4e
    instance-of p0, p1, Lcom/oplus/physicsengine/engine/UIItem;

    if-eqz p0, :cond_55

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    return-object p1

    :cond_55
    new-instance p0, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/UIItem;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/oplus/physicsengine/engine/UIItem;->setSize(FF)Lcom/oplus/physicsengine/engine/UIItem;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .registers 3

    const-string v0, "release"

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->cancel(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->clearBodies()V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->clearListeners()V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->clearBehaviors()V

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public removeBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAllBehaviors:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeBehavior behavior =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",removed =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_2c
    if-eqz p0, :cond_31

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->onRemove()V

    :cond_31
    return p0
.end method

.method public removeListener(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mAnimationListeners:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mUpdateListeners:Ljava/util/HashMap;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public restart()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsCancel:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsCancel:Z

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->resume()V

    :goto_b
    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/BaseBehavior;

    if-eqz v1, :cond_20

    invoke-direct {p0, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->onAnimationStart(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_23
    return-void
.end method

.method public setDebugMode(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Debug;->setDebugMode(Z)V

    return-void
.end method

.method public startBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsCancel:Z

    const/4 v1, 0x0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsAnimatorRunning:Z

    if-eqz v0, :cond_12

    goto :goto_68

    :cond_12
    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBehavior behavior =:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_2c
    move v0, v1

    :goto_2d
    iget-object v2, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_5a

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/physicsengine/engine/BaseBehavior;

    if-eqz v2, :cond_58

    iget-object v4, v2, Lcom/oplus/physicsengine/engine/BaseBehavior;->mTarget:Ljava/lang/Object;

    if-eqz v4, :cond_58

    iget-object v5, p1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mTarget:Ljava/lang/Object;

    if-eqz v5, :cond_58

    if-ne v4, v5, :cond_58

    iget-object v4, v2, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v5, p1, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-ne v4, v5, :cond_58

    invoke-virtual {v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->stopBehavior()Z

    move-result v2

    if-eqz v2, :cond_58

    add-int/lit8 v0, v0, -0x1

    :cond_58
    add-int/2addr v0, v3

    goto :goto_2d

    :cond_5a
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mIsSteady:Z

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->resume()V

    invoke-direct {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->onAnimationStart(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    return v3

    :cond_68
    :goto_68
    return v1
.end method

.method public stopBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBehavior behavior =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentRunningBehaviors.size() =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->mCurrentRunningBehaviors:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_2d
    invoke-direct {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->onAnimationEnd(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    return-void
.end method

.method public updateValue(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->updateProperties()V

    return-void
.end method
