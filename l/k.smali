.class public Ll/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Lk/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lk/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lk/a;Lk/d;Z)V
    .registers 7
    .param p4  # Lk/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Lk/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/k;->c:Ljava/lang/String;

    iput-boolean p2, p0, Ll/k;->a:Z

    iput-object p3, p0, Ll/k;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Ll/k;->d:Lk/a;

    iput-object p5, p0, Ll/k;->e:Lk/d;

    iput-boolean p6, p0, Ll/k;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    new-instance v0, Lg/g;

    invoke-direct {v0, p1, p2, p0}, Lg/g;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/k;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ShapeFill{color=, fillEnabled="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Ll/k;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
