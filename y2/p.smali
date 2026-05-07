.class public final Ly2/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ly2/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly2/p;

    invoke-direct {v0}, Ly2/p;-><init>()V

    sput-object v0, Ly2/p;->a:Ly2/p;

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

    const-string p0, "kotlin.Unit"

    return-object p0
.end method
