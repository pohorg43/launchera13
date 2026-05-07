.class public interface abstract Lp0/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lp0/a$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp0/a$b$a;

    invoke-direct {v0}, Lp0/a$b$a;-><init>()V

    sput-object v0, Lp0/a$b;->a:Lp0/a$b;

    return-void
.end method
