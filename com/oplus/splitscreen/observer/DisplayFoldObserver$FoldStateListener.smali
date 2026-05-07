.class public Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/observer/DisplayFoldObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoldStateListener"
.end annotation


# instance fields
.field private lastResult:Ljava/lang/Boolean;

.field private final mDelegate:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFoldedDeviceStates:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_e

    iput-object p1, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;->mFoldedDeviceStates:[I

    iput-object p2, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;->mDelegate:Ljava/util/function/Consumer;

    return-void

    :array_e
    .array-data 4
        0x0
        0x1
        0x64
    .end array-data
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;->lastResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;->lastResult:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;->mDelegate:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_23
    return-void
.end method
