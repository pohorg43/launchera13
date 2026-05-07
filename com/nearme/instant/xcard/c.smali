.class public final synthetic Lcom/nearme/instant/xcard/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic a:Lcom/nearme/instant/xcard/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/nearme/instant/xcard/c;

    invoke-direct {v0}, Lcom/nearme/instant/xcard/c;-><init>()V

    sput-object v0, Lcom/nearme/instant/xcard/c;->a:Lcom/nearme/instant/xcard/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 2

    invoke-static {p1}, Lcom/nearme/instant/xcard/UtilsKt;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
