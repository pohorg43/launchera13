.class public final Ll2/d;
.super Ll2/f;
.source ""


# instance fields
.field public i:Lq2/a;

.field public j:Landroid/graphics/Bitmap;

.field public k:Z

.field public l:I

.field public m:I

.field public n:F

.field public o:F

.field public p:Z

.field public q:Lo2/a;

.field public r:Lo2/a;

.field public s:Ll2/e;

.field public t:Lp2/b;

.field public u:Lp2/b;

.field public v:Ln2/a;

.field public final w:[F

.field public final x:[F

.field public final y:[F

.field public final z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ll2/f;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll2/d;->k:Z

    const/16 p1, 0x9c

    iput p1, p0, Ll2/d;->l:I

    iput p1, p0, Ll2/d;->m:I

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Ll2/d;->n:F

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Ll2/d;->w:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ll2/d;->x:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ll2/d;->y:[F

    new-array p1, p1, [F

    iput-object p1, p0, Ll2/d;->z:[F

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll2/d;->k:Z

    iget-object v0, p0, Ll2/d;->q:Lo2/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo2/a;->dispose()V

    :cond_a
    iget-object v0, p0, Ll2/d;->r:Lo2/a;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lo2/a;->dispose()V

    :cond_11
    iget-object v0, p0, Ll2/d;->s:Ll2/e;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lk/m;->dispose()V

    :cond_18
    iget-object v0, p0, Ll2/d;->v:Ln2/a;

    if-eqz v0, :cond_21

    iget-object v0, v0, Ln2/a;->a:Lm2/a;

    invoke-virtual {v0}, Lm2/a;->dispose()V

    :cond_21
    iget-object v0, p0, Ll2/d;->t:Lp2/b;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lp2/b;->dispose()V

    :cond_28
    iget-object p0, p0, Ll2/d;->u:Lp2/b;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lp2/b;->dispose()V

    :cond_2f
    return-void
.end method
