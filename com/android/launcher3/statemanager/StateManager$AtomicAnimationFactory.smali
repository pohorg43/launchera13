.class public Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomicAnimationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NEXT_INDEX:I


# instance fields
.field private final mStateElementAnimators:[Landroid/animation/Animator;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Landroid/animation/Animator;

    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->mStateElementAnimators:[Landroid/animation/Animator;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;)[Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->mStateElementAnimators:[Landroid/animation/Animator;

    return-object p0
.end method


# virtual methods
.method public cancelAllStateElementAnimation()V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->mStateElementAnimators:[Landroid/animation/Animator;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public varargs createStateElementAnimation(I[F)Landroid/animation/Animator;
    .registers 3

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Unknown gesture animation "

    invoke-static {p2, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepareForAtomicAnimation(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;TSTATE_TYPE;",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            ")V"
        }
    .end annotation

    return-void
.end method
