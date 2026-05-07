.class public Lm/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/e$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/airbnb/lottie/d;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Lm/e$a;

.field public final f:J

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lk/k;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:F

.field public final o:I

.field public final p:I

.field public final q:Lk/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final r:Lk/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final s:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr/a<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final u:I

.field public final v:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/d;Ljava/lang/String;JLm/e$a;JLjava/lang/String;Ljava/util/List;Lk/k;IIIFFIILk/i;Lk/j;Ljava/util/List;ILk/b;Z)V
    .registers 28
    .param p9  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19  # Lk/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20  # Lk/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll/b;",
            ">;",
            "Lcom/airbnb/lottie/d;",
            "Ljava/lang/String;",
            "J",
            "Lm/e$a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ll/f;",
            ">;",
            "Lk/k;",
            "IIIFFII",
            "Lk/i;",
            "Lk/j;",
            "Ljava/util/List<",
            "Lr/a<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lk/b;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lm/e;->a:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Lm/e;->b:Lcom/airbnb/lottie/d;

    move-object v1, p3

    iput-object v1, v0, Lm/e;->c:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lm/e;->d:J

    move-object v1, p6

    iput-object v1, v0, Lm/e;->e:Lm/e$a;

    move-wide v1, p7

    iput-wide v1, v0, Lm/e;->f:J

    move-object v1, p9

    iput-object v1, v0, Lm/e;->g:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lm/e;->h:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lm/e;->i:Lk/k;

    move v1, p12

    iput v1, v0, Lm/e;->j:I

    move/from16 v1, p13

    iput v1, v0, Lm/e;->k:I

    move/from16 v1, p14

    iput v1, v0, Lm/e;->l:I

    move/from16 v1, p15

    iput v1, v0, Lm/e;->m:F

    move/from16 v1, p16

    iput v1, v0, Lm/e;->n:F

    move/from16 v1, p17

    iput v1, v0, Lm/e;->o:I

    move/from16 v1, p18

    iput v1, v0, Lm/e;->p:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lm/e;->q:Lk/i;

    move-object/from16 v1, p20

    iput-object v1, v0, Lm/e;->r:Lk/j;

    move-object/from16 v1, p21

    iput-object v1, v0, Lm/e;->t:Ljava/util/List;

    move/from16 v1, p22

    iput v1, v0, Lm/e;->u:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lm/e;->s:Lk/b;

    move/from16 v1, p24

    iput-boolean v1, v0, Lm/e;->v:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/e;->b:Lcom/airbnb/lottie/d;

    iget-wide v3, p0, Lm/e;->f:J

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/d;->e(J)Lm/e;

    move-result-object v2

    if-eqz v2, :cond_45

    const-string v3, "\t\tParents: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lm/e;->b:Lcom/airbnb/lottie/d;

    iget-wide v4, v2, Lm/e;->f:J

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/d;->e(J)Lm/e;

    move-result-object v2

    :goto_2a
    if-eqz v2, :cond_3f

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lm/e;->b:Lcom/airbnb/lottie/d;

    iget-wide v4, v2, Lm/e;->f:J

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/d;->e(J)Lm/e;

    move-result-object v2

    goto :goto_2a

    :cond_3f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v2, p0, Lm/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    iget v2, p0, Lm/e;->j:I

    if-eqz v2, :cond_9a

    iget v2, p0, Lm/e;->k:I

    if-eqz v2, :cond_9a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lm/e;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lm/e;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lm/e;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    iget-object v2, p0, Lm/e;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm/e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b0

    :cond_c9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lm/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
