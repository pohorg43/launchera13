.class public Lk/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lk/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lk/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/a;Lk/a;Lk/b;Lk/b;)V
    .registers 5
    .param p1  # Lk/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lk/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Lk/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/j;->a:Lk/a;

    iput-object p2, p0, Lk/j;->b:Lk/a;

    iput-object p3, p0, Lk/j;->c:Lk/b;

    iput-object p4, p0, Lk/j;->d:Lk/b;

    return-void
.end method
