.class public interface abstract Lcom/nearme/instant/xcard/InstantCard;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CARD_PAGE_STATE_CREATED:I = 0x1

.field public static final CARD_PAGE_STATE_HIDE:I = 0x2

.field public static final CARD_PAGE_STATE_NONE:I = 0x0

.field public static final CARD_PAGE_STATE_SHOW:I = 0x3

.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract getCardViewSnapshot()Landroid/graphics/Bitmap;
.end method

.method public abstract load(Ljava/lang/String;Z)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onDestroy()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract registerMessageCallback(Lorg/hapjs/card/api/CardCallback;)V
.end method

.method public abstract replyMessage(ILjava/lang/String;)V
.end method

.method public abstract setCardBlurHandler(Lcom/nearme/instant/xcard/BlurInterface;)V
.end method

.method public abstract setScrollState(I)V
.end method

.method public abstract setStatFieldConfig(Lcom/nearme/instant/xcard/statitics/StatFieldConfig;)V
.end method

.method public abstract unregisterMessageCallback()V
.end method
