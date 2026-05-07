.class public Lk/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Lg/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lk/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lk/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lk/k;-><init>(Lg/b;Lk/l;Lk/f;Lk/b;Lk/d;Lk/b;Lk/b;Lk/b;Lk/b;)V

    return-void
.end method

.method public constructor <init>(Lg/b;Lk/l;Lk/f;Lk/b;Lk/d;Lk/b;Lk/b;Lk/b;Lk/b;)V
    .registers 10
    .param p1  # Lg/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lk/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lk/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Lk/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/b;",
            "Lk/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lk/f;",
            "Lk/b;",
            "Lk/d;",
            "Lk/b;",
            "Lk/b;",
            "Lk/b;",
            "Lk/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/k;->a:Lg/b;

    iput-object p2, p0, Lk/k;->b:Lk/l;

    iput-object p3, p0, Lk/k;->c:Lk/f;

    iput-object p4, p0, Lk/k;->d:Lk/b;

    iput-object p5, p0, Lk/k;->e:Lk/d;

    iput-object p6, p0, Lk/k;->h:Lk/b;

    iput-object p7, p0, Lk/k;->i:Lk/b;

    iput-object p8, p0, Lk/k;->f:Lk/b;

    iput-object p9, p0, Lk/k;->g:Lk/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
