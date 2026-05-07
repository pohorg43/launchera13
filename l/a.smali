.class public Ll/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lk/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk/e;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk/l;Lk/e;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lk/e;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/a;->a:Ljava/lang/String;

    iput-object p2, p0, Ll/a;->b:Lk/l;

    iput-object p3, p0, Ll/a;->c:Lk/e;

    iput-boolean p4, p0, Ll/a;->d:Z

    iput-boolean p5, p0, Ll/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    new-instance v0, Lg/f;

    invoke-direct {v0, p1, p2, p0}, Lg/f;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/a;)V

    return-object v0
.end method
