.class public Ly0/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly0/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:Ly0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly0/g;

    invoke-direct {v0}, Ly0/g;-><init>()V

    sput-object v0, Ly0/g;->a:Ly0/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm0/w;Lj0/e;)Lm0/w;
    .registers 3
    .param p1  # Lm0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/w<",
            "TZ;>;",
            "Lj0/e;",
            ")",
            "Lm0/w<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
