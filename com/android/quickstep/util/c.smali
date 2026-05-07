.class public final synthetic Lcom/android/quickstep/util/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/util/c;

    invoke-direct {v0}, Lcom/android/quickstep/util/c;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/c;->a:Lcom/android/quickstep/util/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/quickstep/util/ImageActionUtils;->c(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
