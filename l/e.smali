.class public Ll/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lk/c;

.field public final d:Lk/d;

.field public final e:Lk/e;

.field public final f:Lk/e;

.field public final g:Lk/b;

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILk/c;Lk/d;Lk/e;Lk/e;Lk/b;IIFLjava/util/List;Lk/b;Z)V
    .registers 14
    .param p12  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lk/c;",
            "Lk/d;",
            "Lk/e;",
            "Lk/e;",
            "Lk/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "F",
            "Ljava/util/List<",
            "Lk/b;",
            ">;",
            "Lk/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/e;->a:Ljava/lang/String;

    iput p2, p0, Ll/e;->b:I

    iput-object p3, p0, Ll/e;->c:Lk/c;

    iput-object p4, p0, Ll/e;->d:Lk/d;

    iput-object p5, p0, Ll/e;->e:Lk/e;

    iput-object p6, p0, Ll/e;->f:Lk/e;

    iput-object p7, p0, Ll/e;->g:Lk/b;

    iput p8, p0, Ll/e;->h:I

    iput p9, p0, Ll/e;->i:I

    iput p10, p0, Ll/e;->j:F

    iput-object p11, p0, Ll/e;->k:Ljava/util/List;

    iput-object p12, p0, Ll/e;->l:Lk/b;

    iput-boolean p13, p0, Ll/e;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    new-instance v0, Lg/i;

    invoke-direct {v0, p1, p2, p0}, Lg/i;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/e;)V

    return-object v0
.end method
