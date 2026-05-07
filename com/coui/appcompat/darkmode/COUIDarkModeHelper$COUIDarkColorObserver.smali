.class public abstract Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$COUIDarkColorObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "COUIDarkColorObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundChange()V
    .registers 1

    return-void
.end method

.method public onDialogBackgroundChange()V
    .registers 1

    return-void
.end method

.method public onForegroundChange()V
    .registers 1

    return-void
.end method
