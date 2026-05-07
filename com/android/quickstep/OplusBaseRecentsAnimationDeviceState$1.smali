.class public final Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$1;->this$0:Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchBoundsChange()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$1;->this$0:Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->resetSwipeRegionsForce()V

    return-void
.end method
