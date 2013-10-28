/* Copyright (C) 2013, Mikkel Krautz <mikkel@krautz.dk>

   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions
   are met:

   - Redistributions of source code must retain the above copyright notice,
     this list of conditions and the following disclaimer.
   - Redistributions in binary form must reproduce the above copyright notice,
     this list of conditions and the following disclaimer in the documentation
     and/or other materials provided with the distribution.
   - Neither the name of the Mumble Developers nor the names of its
     contributors may be used to endorse or promote products derived from this
     software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
   ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
   A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR
   CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
   EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
   PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
   PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
   SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#import "MacUnifiedToolbarDelegate.h"

#include <QtGlobal>

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@implementation MacUnifiedToolbarDelegate

- (instancetype) init {
	if ((self = [super init])) {
	}
	return self;
}

- (void) dealloc {
	[super dealloc];
}

- (NSArray *) toolbarAllowedItemIdentifiers:(NSToolbar *)toolbar {
  Q_UNUSED(toolbar);

	return @[@"filler"];
}

- (NSArray *) toolbarDefaultItemIdentifiers:(NSToolbar *)toolbar {
  Q_UNUSED(toolbar);

	return @[@"filler"];
}

- (NSArray *) toolbarSelectableItemIdentifiers:(NSToolbar *)toolbar {
  Q_UNUSED(toolbar);

	return  nil;
}

- (NSToolbarItem *) toolbar:(NSToolbar *)toolbar itemForItemIdentifier:(NSString *)identifier willBeInsertedIntoToolbar:(BOOL)willBeInserted {
  Q_UNUSED(toolbar);
  Q_UNUSED(willBeInserted);

  NSToolbarItem *item = [[[NSToolbarItem alloc] initWithItemIdentifier:identifier] autorelease];
  [item setMinSize:CGSizeMake(0, 32)];
  return item;
}

@end
