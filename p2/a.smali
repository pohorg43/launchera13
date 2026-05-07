.class public abstract Lp2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls2/a;


# instance fields
.field public a:Lp2/b$a;

.field public b:Lp2/b$a;

.field public c:I

.field public d:I

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp2/a;->e:I

    iput p2, p0, Lp2/a;->f:I

    sget-object p1, Lp2/b$a;->b:Lp2/b$a;

    iput-object p1, p0, Lp2/a;->a:Lp2/b$a;

    iput-object p1, p0, Lp2/a;->b:Lp2/b$a;

    const/4 p1, 0x2

    iput p1, p0, Lp2/a;->c:I

    iput p1, p0, Lp2/a;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lp2/b$a;Lp2/b$a;Z)V
    .registers 7

    if-eqz p1, :cond_13

    if-nez p3, :cond_8

    iget-object v0, p0, Lp2/a;->a:Lp2/b$a;

    if-eq v0, p1, :cond_13

    :cond_8
    iget v0, p0, Lp2/a;->e:I

    const/16 v1, 0x2801

    iget v2, p1, Lp2/b$a;->a:I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput-object p1, p0, Lp2/a;->a:Lp2/b$a;

    :cond_13
    if-eqz p2, :cond_26

    if-nez p3, :cond_1b

    iget-object p1, p0, Lp2/a;->b:Lp2/b$a;

    if-eq p1, p2, :cond_26

    :cond_1b
    iget p1, p0, Lp2/a;->e:I

    const/16 p3, 0x2800

    iget v0, p2, Lp2/b$a;->a:I

    invoke-static {p1, p3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput-object p2, p0, Lp2/a;->b:Lp2/b$a;

    :cond_26
    return-void
.end method

.method public final b(IIZ)V
    .registers 7

    if-eqz p1, :cond_15

    if-nez p3, :cond_8

    iget v0, p0, Lp2/a;->c:I

    if-eq v0, p1, :cond_15

    :cond_8
    iget v0, p0, Lp2/a;->e:I

    const/16 v1, 0x2802

    invoke-static {p1}, Lj/b;->m(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput p1, p0, Lp2/a;->c:I

    :cond_15
    if-eqz p2, :cond_2a

    if-nez p3, :cond_1d

    iget p1, p0, Lp2/a;->d:I

    if-eq p1, p2, :cond_2a

    :cond_1d
    iget p1, p0, Lp2/a;->e:I

    const/16 p3, 0x2803

    invoke-static {p2}, Lj/b;->m(I)I

    move-result v0

    invoke-static {p1, p3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput p2, p0, Lp2/a;->d:I

    :cond_2a
    return-void
.end method
