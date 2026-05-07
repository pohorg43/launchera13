.class public final synthetic Lcom/android/quickstep/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/u0;->a:Lcom/android/quickstep/RecentsAnimationController;

    iput-boolean p2, p0, Lcom/android/quickstep/u0;->b:Z

    iput-boolean p3, p0, Lcom/android/quickstep/u0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/u0;->a:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v1, p0, Lcom/android/quickstep/u0;->b:Z

    iget-boolean p0, p0, Lcom/android/quickstep/u0;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationController;->m(Lcom/android/quickstep/RecentsAnimationController;ZZ)V

    return-void
.end method
