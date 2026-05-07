.class public Lz0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz0/i;)V
    .registers 2
    .param p1  # Lz0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lz0/i;->onStart()V

    return-void
.end method

.method public b(Lz0/i;)V
    .registers 2
    .param p1  # Lz0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
