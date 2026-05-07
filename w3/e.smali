.class public final Lw3/e;
.super Lw3/g;
.source ""


# static fields
.field public static final a:Lw3/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lw3/e;

    invoke-direct {v0}, Lw3/e;-><init>()V

    sput-object v0, Lw3/e;->a:Lw3/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lw3/g;-><init>()V

    return-void
.end method
