.class public final Lf1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj0/c;


# static fields
.field public static final b:Lf1/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf1/a;

    invoke-direct {v0}, Lf1/a;-><init>()V

    sput-object v0, Lf1/a;->b:Lf1/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "EmptySignature"

    return-object p0
.end method
