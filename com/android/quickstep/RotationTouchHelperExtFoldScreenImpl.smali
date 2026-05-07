.class public final Lcom/android/quickstep/RotationTouchHelperExtFoldScreenImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/IRotationTouchHelperExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/IRotationTouchHelperExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/quickstep/IRotationTouchHelperExt;",
        ">;"
    }
.end annotation


# instance fields
.field private mHost:Lcom/android/quickstep/RotationTouchHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/IRotationTouchHelperExt;
    .registers 3

    instance-of v0, p1, Lcom/android/quickstep/RotationTouchHelper;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/quickstep/RotationTouchHelper;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelperExtFoldScreenImpl;->mHost:Lcom/android/quickstep/RotationTouchHelper;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RotationTouchHelperExtFoldScreenImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/IRotationTouchHelperExt;

    move-result-object p0

    return-object p0
.end method

.method public injectOnEndTargetCalculated(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/BaseActivityInterface;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/GestureState$GestureEndTarget;",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "endTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2a

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelperExtFoldScreenImpl;->mHost:Lcom/android/quickstep/RotationTouchHelper;

    if-nez p0, :cond_14

    goto :goto_28

    :cond_14
    iget-object p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {p1}, Lcom/android/quickstep/OrientationTouchTransformer;->getQuickStepStartingRotation()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_26

    iget-object p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {p1}, Lcom/android/quickstep/OrientationTouchTransformer;->getCurrentActiveRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->notifySysuiOfCurrentRotation(I)V

    :cond_26
    iput-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mPrioritizeDeviceRotation:Z

    :goto_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    return v0
.end method
