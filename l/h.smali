.class public Ll/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lk/b;

.field public final d:Lk/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lk/b;

.field public final f:Lk/b;

.field public final g:Lk/b;

.field public final h:Lk/b;

.field public final i:Lk/b;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILk/b;Lk/l;Lk/b;Lk/b;Lk/b;Lk/b;Lk/b;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lk/b;",
            "Lk/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lk/b;",
            "Lk/b;",
            "Lk/b;",
            "Lk/b;",
            "Lk/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/h;->a:Ljava/lang/String;

    iput p2, p0, Ll/h;->b:I

    iput-object p3, p0, Ll/h;->c:Lk/b;

    iput-object p4, p0, Ll/h;->d:Lk/l;

    iput-object p5, p0, Ll/h;->e:Lk/b;

    iput-object p6, p0, Ll/h;->f:Lk/b;

    iput-object p7, p0, Ll/h;->g:Lk/b;

    iput-object p8, p0, Ll/h;->h:Lk/b;

    iput-object p9, p0, Ll/h;->i:Lk/b;

    iput-boolean p10, p0, Ll/h;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    new-instance v0, Lg/n;

    invoke-direct {v0, p1, p2, p0}, Lg/n;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/h;)V

    return-object v0
.end method
