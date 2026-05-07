.class public Ll/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lk/g;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILk/g;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/m;->a:Ljava/lang/String;

    iput p2, p0, Ll/m;->b:I

    iput-object p3, p0, Ll/m;->c:Lk/g;

    iput-boolean p4, p0, Ll/m;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    new-instance v0, Lg/q;

    invoke-direct {v0, p1, p2, p0}, Lg/q;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/m;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ShapePath{name="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ll/m;->b:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
