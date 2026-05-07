.class public Lm/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/a$b;


# instance fields
.field public final synthetic a:Lh/c;

.field public final synthetic b:Lm/b;


# direct methods
.method public constructor <init>(Lm/b;Lh/c;)V
    .registers 3

    iput-object p1, p0, Lm/a;->b:Lm/b;

    iput-object p2, p0, Lm/a;->a:Lh/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .registers 3

    iget-object v0, p0, Lm/a;->b:Lm/b;

    iget-object p0, p0, Lm/a;->a:Lh/c;

    invoke-virtual {p0}, Lh/c;->i()F

    move-result p0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    iget-boolean v1, v0, Lm/b;->v:Z

    if-eq p0, v1, :cond_1c

    iput-boolean p0, v0, Lm/b;->v:Z

    iget-object p0, v0, Lm/b;->n:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    :cond_1c
    return-void
.end method
