.class public Ll/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lk/a;

.field public final e:Lk/d;

.field public final f:Lk/b;

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk/b;Ljava/util/List;Lk/a;Lk/d;Lk/b;IIFZ)V
    .registers 11
    .param p2  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk/b;",
            "Ljava/util/List<",
            "Lk/b;",
            ">;",
            "Lk/a;",
            "Lk/d;",
            "Lk/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "FZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/n;->a:Ljava/lang/String;

    iput-object p2, p0, Ll/n;->b:Lk/b;

    iput-object p3, p0, Ll/n;->c:Ljava/util/List;

    iput-object p4, p0, Ll/n;->d:Lk/a;

    iput-object p5, p0, Ll/n;->e:Lk/d;

    iput-object p6, p0, Ll/n;->f:Lk/b;

    iput p7, p0, Ll/n;->g:I

    iput p8, p0, Ll/n;->h:I

    iput p9, p0, Ll/n;->i:F

    iput-boolean p10, p0, Ll/n;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    new-instance v0, Lg/r;

    invoke-direct {v0, p1, p2, p0}, Lg/r;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/n;)V

    return-object v0
.end method
