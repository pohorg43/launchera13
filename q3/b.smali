.class public final Lq3/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/u1;


# static fields
.field public static final a:Lq3/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq3/b;

    invoke-direct {v0}, Lq3/b;-><init>()V

    sput-object v0, Lq3/b;->a:Lq3/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Active"

    return-object p0
.end method
