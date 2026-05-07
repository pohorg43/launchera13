.class public final Lx0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li0/a$a;


# instance fields
.field public final a:Ln0/c;

.field public final b:Ln0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln0/c;Ln0/b;)V
    .registers 3
    .param p2  # Ln0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/a;->a:Ln0/c;

    iput-object p2, p0, Lx0/a;->b:Ln0/b;

    return-void
.end method


# virtual methods
.method public a(I)[B
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lx0/a;->b:Ln0/b;

    if-nez p0, :cond_7

    new-array p0, p1, [B

    return-object p0

    :cond_7
    const-class v0, [B

    invoke-interface {p0, p1, v0}, Ln0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
