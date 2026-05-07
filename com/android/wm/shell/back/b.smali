.class public final synthetic Lcom/android/wm/shell/back/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/b;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput p2, p0, Lcom/android/wm/shell/back/b;->b:F

    iput p3, p0, Lcom/android/wm/shell/back/b;->c:F

    iput p4, p0, Lcom/android/wm/shell/back/b;->d:I

    iput p5, p0, Lcom/android/wm/shell/back/b;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/b;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iget v1, p0, Lcom/android/wm/shell/back/b;->b:F

    iget v2, p0, Lcom/android/wm/shell/back/b;->c:F

    iget v3, p0, Lcom/android/wm/shell/back/b;->d:I

    iget p0, p0, Lcom/android/wm/shell/back/b;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->a(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFII)V

    return-void
.end method
